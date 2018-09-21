<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 8: Mardin, CCM 72, f. 35v (dated 1488)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="diyr-338" />
	<tiles:putAttribute name="nextSection" value="ccm-62" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
					 <div id="openseadragon1" style="width: 950px; height: 800px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.7", 
		minZoomLevel : "0.6",
       maxZoomLevel : "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm_00072_035v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm_00072_035v/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ">
    </noscript>
    <small><em>Mardin, Chaldean Cathedral, CCM 72, f. 35v. All rights reserved. Image provided by HMML.</em></small> </div>
</div>
<div class="row">
  <div class="col-lg-12">
  <p>&nbsp;</p>
    <p>This manuscript shows some variation in the thickness of letter-lines, and with an overall more flowing feel than some later Estrangela manuscripts. There are no Serto-like features here, and the letters-shapes are a simple, straightforward Estrangela. Note the very small size of the (East Syriac) vocalic dots.</p>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>