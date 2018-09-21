<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer>	
	<tiles:insertAttribute name="footerHelp" />
		
	<div class="footer-container clearfix">
		<div class="col-sm-4 text-center footer-left-container">
		    <a href="http://www.hmml.org/" target="_blank">
				<img src="${pageContext.request.contextPath}/static/img/HMML2015RoundLogo72.png" width="175" alt="Hill Museum &amp; Manuscript Library">
			</a>
		</div>
		<div class="col-sm-4 text-center footer-center-container">
			<a href="http://csbsju.edu/" target="_blank">
				<img src="${pageContext.request.contextPath}/static/img/SJUHorizR1x.png" alt="Saint John's University" />
			</a>
		</div>
		<div class="col-sm-4 footer-right-container">
			<div class="fund-container">
				<p class="saveSearch fund-title">Funded in part by</p>
				<div>
					<div class="fund-container-left">
						<a href="http://www.hluce.org/" target="_blank"><img alt="The Henry Luce Foundation" src="${pageContext.request.contextPath}/static/img/luce_logo.gif" width="85" /></a>
					</div>
					<div class="fund-container-right">
						<a href="http://www.arcadiafund.org.uk/" target="_blank"><img alt="Arcadia" src="${pageContext.request.contextPath}/static/img/arcadia-new-logo.png" height="45" /></a><br />
						<a href="https://www.imls.gov" target="_blank"><img alt="Institute of Museum and Library Services" src="${pageContext.request.contextPath}/static/img/imls.png" height="80" /></a><br />
						<a href="https://www.neh.gov" target="_blank"><img alt="National Endowment for the Humanities" src="${pageContext.request.contextPath}/static/img/neh_Logo.gif" height="50" /></a><br /><br />
						<a href="https://mellon.org/" target="_blank" class="saveSearch fund-link">The Andrew W. Mellon Foundation</a>
					</div>
				</div>
			</div>
				
		</div>
	</div>
</footer>
