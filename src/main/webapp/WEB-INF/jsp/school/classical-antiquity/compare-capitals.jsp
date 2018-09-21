<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Classical Antiquity: Paleography"/>
	<tiles:putAttribute name="sectionName" value="Section 5: Compare Square and Rustic Capitals"/>
	<tiles:putAttribute name="previousSection" value="rustic-capitals"/>	
	<tiles:putAttribute name="nextSection" value="exercise"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					Click on the images to zoom in and explore up close, and also consider how a group 
					of lines written in one of these scripts compares to a group of lines written in the 
					other. What clues would you use to tell these scripts apart?
				</p>
				
				<p>
					After you've had a chance to study these examples closely, click through to try a 
					quick quiz to see if you can tell one script from the other.
				</p>
			</div>
		</div>
		
		<hr />

		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p class="imageTitle">Rustic Capitals</p>
				<div id="openseadragon1" style="width: 900px; height: 500px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon1",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "2", // normally defaults to 0
						minZoomLevel: "0.5",
						maxZoomLevel: "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output.xml"
					});
				</script> 
				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt=""></noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana,  Vat. lat. 3225, f. XIVr.</em></small>  
				<br/>
				</div>
				</div>
			<div class="row">
				<div class="col-lg-12 lesson-image"> 
				<p class="imageTitle">Square Capitals</p>

				<div id="openseadragon2" style="width: 900px; height: 500px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon2",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "3", // default 0
						minZoomLevel: "0.5",
						maxZoomLevel: "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from Saint Gall Number 1394, page 12"></noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 1394, p. 12. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>)</em></small>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>