<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac: Twentieth and Twenty-First Century Manuscripts - Serto Examples" />
	<tiles:putAttribute name="sectionName"
		value="Section 2.7: Midyat, MGMT 81, p. 2 (dated 1968)" />
	<tiles:putAttribute name="sectionDescription"
		value="Dionysius bar Salibi, <i>Commentary on Genesis</i>" />
	<tiles:putAttribute name="previousSection" value="cfmm-555" />
	<tiles:putAttribute name="nextSection" value="mgmt-83" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.5",
						minZoomLevel : "0.4",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/mgmt00081_0004r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/mgmt00081_0004r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from MGMT 81">
				</noscript>
				<small><em>Midyat, Mor Gabriel Monastery, MGMT 81, p.
						2. All rights reserved. Image provided by HMML.</em></small>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>This manuscript is written in a kind of composition book,
					like the previous example CFMM 555, here divided into fixed columns.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>