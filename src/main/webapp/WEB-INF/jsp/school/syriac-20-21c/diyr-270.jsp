<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Twentieth and Twenty-First Century Manuscripts - Serto Examples" />
	<tiles:putAttribute name="sectionName" value="Section 2.1: Diyarbakir, DIYR 270, ff. 17v-18r (dated 1931-35)" />
	<tiles:putAttribute name="sectionDescription" value="Liturgical texts" />
	<tiles:putAttribute name="previousSection" value="20-21stmanuscripts" />
	<tiles:putAttribute name="nextSection" value="cfmm-550" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
					<p>&nbsp;</p>
				<div id="openseadragon1" style="width: 900px; height: 600px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		///defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
       maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr_00270_018/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr_00270_018/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from DIYR 270">
    </noscript>
    <small><em>Diyarbakir, Meryem Ana Syriac Orthodox Church, DIYR 270, ff. 17v-18r. All rights reserved. Image provided by HMML.</em></small>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>