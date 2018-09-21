<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Twentieth and Twenty-First Century Manuscripts - Serto Examples" />
	<tiles:putAttribute name="sectionName" value="Section 2.10: Jerusalem, SMMJ 475, pp. 9-10 (dated 2012)" />
	<tiles:putAttribute name="sectionDescription" value="Jacob of Serugh, <i>Memra on the End and Gehenna</i>" />
	<tiles:putAttribute name="previousSection" value="zfrn-385" />
	<tiles:putAttribute name="nextSection" value="acz-9" />
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
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00475_007/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00475_007/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from SMMJ 00475">
    </noscript>
    <small><em>Jerusalem, Saint Mark's Monastery, SMMJ 475, pp. 9-10. All rights reserved. Image provided by HMML.</em></small>

  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <p>Like the <a href="${pageContext.request.contextPath}/school/lesson/syriac-20-21c/mgmt-83">previous example <i>MGMT 83</i></a>, this is paginated in western Arabic numerals and in Syriac letters.</p>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>