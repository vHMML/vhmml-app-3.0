<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Twentieth and Twenty-First Century Manuscripts - East Syriac Examples" />
	<tiles:putAttribute name="sectionName" value="Section 3.4: Zakho,  ACZ 73, f. 3r (dated 1926)" />
	 <tiles:putAttribute name="sectionDescription" value="Rites of Consecration of Myron and of Baptism" />
	<tiles:putAttribute name="previousSection" value="acz-12" />
	<tiles:putAttribute name="nextSection" value="qacct-31" />
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
		defaultZoomLevel: "0.5", 
		minZoomLevel : "0.4",
        maxZoomLevel : "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/acz_00073_003r/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/acz_00073_003r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ACZ 00073">
    </noscript>
    <small><em>Zakho, Chaldean Archdiocese, ACZ 73, f. 3r. All rights reserved. Image provided by HMML.</em></small>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>