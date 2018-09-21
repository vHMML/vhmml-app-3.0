package org.vhmml.service;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Map;

import javax.net.ssl.SSLContext;

import org.apache.commons.collections4.MapUtils;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpMethodBase;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpHost;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.TrustSelfSignedStrategy;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.ssl.SSLContexts;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;
import org.vhmml.service.ApplicationConfigService.Property;

@Component
public class RemoteServiceUtil {

	private static final Logger LOG = Logger.getLogger(RemoteServiceUtil.class);
	
	private static final String USER_AGENT_STRING = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36";	
	
	@Autowired
	private ApplicationConfigService configService;
	
	public HttpClient getHttpClient(boolean proxy) {
		HttpClient httpClient = new HttpClient();
		HttpClientParams params = httpClient.getParams();
		params.setParameter(HttpMethodParams.USER_AGENT, USER_AGENT_STRING);				
		String activeProfile = System.getProperty("spring.profiles.active");
		
		if(proxy && StringUtils.isNotEmpty(activeProfile) && !"local".equalsIgnoreCase(activeProfile)) {		
			String webServiceProxyServer = configService.getValue(Property.WEB_SERVICE_PROXY_SERVER);
			Integer webServiceProxyPort = configService.getIntValue(Property.WEB_SERVICE_PROXY_PORT);
			
			if(StringUtils.isNotEmpty(webServiceProxyServer) && webServiceProxyPort != null) {
				httpClient.getHostConfiguration().setProxy(webServiceProxyServer, webServiceProxyPort);
			}			
		}
		
		return httpClient;
	}
	
	public CloseableHttpClient getCloseableHttpClient(boolean proxy) throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {		
		SSLContext sslcontext = SSLContexts.custom().loadTrustMaterial(new TrustSelfSignedStrategy()).build();
		// Allow TLSv1 protocol only
		SSLConnectionSocketFactory sslsf = new SSLConnectionSocketFactory(sslcontext, new String[] { "TLSv1" }, null, SSLConnectionSocketFactory.getDefaultHostnameVerifier());		
		HttpClientBuilder httpClient = HttpClients.custom().setSSLSocketFactory(sslsf).setUserAgent(USER_AGENT_STRING);
		String activeProfile = System.getProperty("spring.profiles.active");
		
		if(proxy && StringUtils.isNotEmpty(activeProfile) && !"local".equalsIgnoreCase(activeProfile)) {		
			String webServiceProxyServer = configService.getValue(Property.WEB_SERVICE_PROXY_SERVER);
			Integer webServiceProxyPort = configService.getIntValue(Property.WEB_SERVICE_PROXY_PORT);
			
			if(StringUtils.isNotEmpty(webServiceProxyServer) && webServiceProxyPort != null) {				
				httpClient.setProxy(new HttpHost(webServiceProxyServer, webServiceProxyPort));
			}			
		}		
		
		return httpClient.build();
	}
	
	public String executeGet(String url, boolean proxyRequest) throws IOException {
		return executeGet(url, null, proxyRequest);
	}
	
	public String executeGet(String url, Map<String, String> headers, boolean proxyRequest) throws IOException {
		String responseString = null;					
		HttpClient httpClient = getHttpClient(proxyRequest);		
		GetMethod get = new GetMethod(url);
		
		if(MapUtils.isNotEmpty(headers)) {			
			
			for(String header : headers.keySet()) {
				get.setRequestHeader(header, headers.get(header));
			}
		}
		
		try {
			httpClient.executeMethod(get);				
			int responseCode = get.getStatusCode();
			InputStream response = get.getResponseBodyAsStream();
			LOG.info("response code from get request " + responseCode + ", content length = " + get.getResponseContentLength());
			printHeaders(get);
			
			if (responseCode != HttpStatus.SC_OK) {
				String message = "Wrong response attempting to execute get at URL [" + url + "], expected " + HttpStatus.SC_OK + " but received " + responseCode;
				LOG.error(message);				
				throw new RuntimeException(message);
			} else {
				BufferedInputStream inputStream = new BufferedInputStream(response);
				responseString = IOUtils.toString(inputStream, "utf-8");
				inputStream.close(); 						
			}		
		} finally {
			get.releaseConnection();
		}	
		
		return responseString;
	}
	
	public String executeGet(String host, String port, String url, boolean proxyRequest) throws IOException {
		return executeGet("http://" + host + ":" + port + url, null, proxyRequest);		
	}
	
	public String executeExternalGet(String url, Map<String, String> headers, boolean proxyRequest) throws IOException, KeyManagementException, NoSuchAlgorithmException, KeyStoreException, CertificateException {
		String responseString = null;				
		CloseableHttpClient httpClient = getCloseableHttpClient(proxyRequest);	
		url = url.replace(" ", "%20");
		HttpGet get = new HttpGet(url);
		CloseableHttpResponse response = null;
		
		if(MapUtils.isNotEmpty(headers)) {					
			for(String header : headers.keySet()) {
				get.addHeader(header, headers.get(header));
			}
		}
		
		try {	
			httpClient.execute(get);
			response = httpClient.execute(get);			
            int responseCode = response.getStatusLine().getStatusCode();
            
            if (responseCode != HttpStatus.SC_OK) {
				String message = "Wrong response attempting to execute get at URL [" + url + "], expected " + HttpStatus.SC_OK + " but received " + responseCode;
				LOG.error(message);
				throw new RuntimeException(message);
			} else {
				responseString = EntityUtils.toString(response.getEntity(), "utf-8");
			}
		} finally {
			get.releaseConnection();
			
			if(response != null) {
				response.close();
			}
			
			httpClient.close();
		}	
		
		return responseString;
	}
	
	@Cacheable(value = "digilibImageScaleCache")
	public byte[] executeGetImage(String host, String port, String url) throws IOException {
		byte[] imageBytes = null;				
		// we don't proxy image requests because they're on the same domain
		HttpClient httpClient = getHttpClient(false);
		String imageUrl = "http://" + host + ":" + port + "/" + url;
		LOG.info("retriving image from image server at url " + imageUrl);
		GetMethod get = new GetMethod(imageUrl);
		
		try {
			httpClient.executeMethod(get);
			int responseCode = get.getStatusCode();
			BufferedInputStream inputStream = new BufferedInputStream(get.getResponseBodyAsStream());
			imageBytes = IOUtils.toByteArray(inputStream);
			inputStream.close(); 	
			
			LOG.info("response code from get image request " + responseCode + ", content length = " + get.getResponseContentLength());
			printHeaders(get);
			
			if (responseCode != HttpStatus.SC_OK) {
				String message = "Wrong response attempting to retrieve image from image server at URL [" + imageUrl + "], expected " + HttpStatus.SC_OK + " but received " + responseCode;
				LOG.warn(message);
				throw new RuntimeException(message);
			} 				
		} finally {
			get.releaseConnection();
		}
		
		return imageBytes;
	}
	
	public HttpClient getHttpClient() {		
		return getHttpClient(true);
	}
	
	public void printHeaders(HttpMethodBase requestMethod) {		
		printHeaders("=== REQUEST HEADERS ===", requestMethod.getRequestHeaders());		
		printHeaders("=== RESPONSE HEADERS ===", requestMethod.getResponseHeaders());		
	}
	
	private void printHeaders(String label, Header[] headers) {
		LOG.info(label);		
		
		for(Header header : headers) {
			LOG.info(header.getName() + " = " + header.getValue());
		}
	}
}
