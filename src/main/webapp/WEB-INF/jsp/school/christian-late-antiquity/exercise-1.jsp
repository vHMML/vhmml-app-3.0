<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Paleography"/>
	<tiles:putAttribute name="sectionName" value="Exercise 1: Uncial or Square Capitals?"/>
	<tiles:putAttribute name="previousSection" value="uncial"/>	
	<tiles:putAttribute name="nextSection" value="half-uncial"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p> &nbsp;</p> 
				<h4 class="lessonSubheading">Which image below is NOT written in Uncial script? </h4><small>(You can click and zoom to look at the images in detail.)</small>
		</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
		
				<%-- <br />--%>
				a.
				<div id="openseadragon1" style="width: 900px; height: 400px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon1",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "3", // 2
						minZoomLevel: "0.8",
						maxZoomLevel: "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script> 

				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="British Library manuscript Harley 1775"></noscript>

			</div>
		</div>


		<div class="row">
			<div class="col-lg-12 lesson-image">
			b.
				<div id="openseadragon2" style="width: 900px; height: 400px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon2",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "3", //2
						minZoomLevel: "0.8",
						maxZoomLevel: "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>
					
				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="St Gallen manuscript 1394"></noscript>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12  lesson-image">
			c.
				<div id="openseadragon3" style="width: 900px; height: 300px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon3",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "4", //4
						minZoomLevel: "0.8",
						maxZoomLevel: "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/geneva_lat0016_004v/GeneratedImages/dzc_output.xml"
					});
				</script>
				
				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/geneva_lat0016_004v/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="manuscript Geneva lat 16 folio 4v "></noscript>
			</div>
		</div>

		<br/>

		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display the Answer</button>
				<span class="exerciseAnswer">
					<p> b. the middle image (St. Gallen 1394) is  not Uncial, but rather in Square Capitals</p>					
				</span>
			</div>
		</div>		
		<p> &nbsp;</p> 
	</tiles:putAttribute>
</tiles:insertTemplate>