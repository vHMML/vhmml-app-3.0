<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin.css?version=${applicationVersion}"/>

<h3>Generate Sitemaps for SEO</h3>

<p>Generating a sitemap will update the sitemaps for all the pages in vHMML.<br />  
To update sitemap for Google, visit the <a href="https://search.google.com/search-console" target="_blank">Google Search Console</a><br />
To update sitemap for Bing, visit the <a href="https://www.bing.com/webmaster" target="_blank">Bing Webmaster Tools</a><br />
Currently the system does not automatically 'PING' Google and Bing due to server restrictions.<br />
FYI, you will need to regenerate the sitemaps after a PROD deploy.</p>

<div>
	<div class="btnWrapper">
		<button class="btn btn-success" id="generateSitemapsBtn">Generate sitemaps</button>
	</div>
	
	<div class="sitemapLastUpdateContainer">
		<p>
			<c:if test="${not empty lastGenerated}">
				Sitemap last generated on <span class="sitemapLastUpdate">${lastGenerated}</span>
			</c:if>
		</p>
	</div>
</div>

<script type="text/javascript">

$(function() {
	
	$('.btnWrapper').on('click','#generateSitemapsBtn',function() {
		var $this = $(this);
		var confirmDialog = new Dialog();
		
		confirmDialog.show({
			title: 'Generate sitemaps?',
			message: 'Are you sure you want to generate the sitemaps?',
			buttons: {
				'Yes': function() {
					confirmDialog.hide();
					generateSitemaps();
				}
			}
		});
	});
});

function generateSitemaps() {
	var $buttonWrapper = $('.btnWrapper');
	var buttonHtml = $buttonWrapper.html();
	
	$.ajax({
		url: contextPath + "/admin/generateSitemaps",
		beforeSend: function() {
			showSpinner({
				element: $buttonWrapper,
				css: {'height': 'auto', 'display': 'inline-block'},
				imageCss: {'height': '18px', 'padding': '0 18px'}
			});
			Messages.removeAll();
			Messages.addMessage({message: 'Generating sitemaps...', severity: 'INFO'});
		},
		complete: function(response) {
			let jsonResponse = JSON.parse(response.responseText);
			$buttonWrapper.html(buttonHtml);
			Messages.removeAll();
			Messages.showResponseMessage(response);	
			// Replace the last generated date.
			$('.sitemapLastUpdate').text('').text(jsonResponse.lastGenerated);
		}
	});
}

</script>
