<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Twentieth and Twenty-First Century Manuscripts - Serto Examples" />
	<tiles:putAttribute name="sectionName" value="Section 2.9: Mardin, ZFRN 385, ff. 3v-4r (dated 1992)" />
	<tiles:putAttribute name="previousSection" value="mgmt-83" />
	<tiles:putAttribute name="nextSection" value="smmj-475" />
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
		defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
       maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/zfrn_00385_004/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/zfrn_00385_004/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ZFRN 00385">
    </noscript>
    <small><em>Mardin, Dayr Al-Zafaran Monastery, ZFRN 385, ff. 3v-4r. All rights reserved. Image provided by HMML.</em></small>

  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <p>This manuscript, a collection of three saints&#8217; lives copied into a 1992 calendar book, is, according to the colophon, based on a much older manuscript on parchment from 1496 AG (&#61; 1184/5 CE).</p>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>