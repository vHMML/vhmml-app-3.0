<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Twentieth and Twenty-First Century Manuscripts - East Syriac Examples" />
	<tiles:putAttribute name="sectionName" value="Section 3.8: Tell Kaif, QACCT 20, f. 4v (dated 1964)" />
	<tiles:putAttribute name="sectionDescription" value="Epistle Lectionary" />
	<tiles:putAttribute name="previousSection" value="qacct-134" />
	<tiles:putAttribute name="nextSection" value="acz-57" />
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
		defaultZoomLevel: "0.6", 
		minZoomLevel : "0.5",
        maxZoomLevel : "5",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/qacct_00020_004v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/qacct_00020_004v/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from QACCT 00020">
    </noscript>
    <small><em>Tell Kaif, Qalb Al-Aqdas Chaldean Church, QACCT 20, f. 4v. All rights reserved. Image provided by HMML.</em></small>
   
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <p>The lines for the text block, which seem to be in pencil, are clearly visible.</p>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>