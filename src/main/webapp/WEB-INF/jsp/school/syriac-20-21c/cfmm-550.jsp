<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac: Twentieth and Twenty-First Century Manuscripts - Serto Examples" />
	<tiles:putAttribute name="sectionName"
		value="Section 2.2: Mardin, CFMM 550, p. 3 (dated 1945)" />
	<tiles:putAttribute name="sectionDescription"
		value="Ibn Sina,   translator Bar Hebraeus" />
		<%--trans. Gregory bar 'Ebroyo--%>
	<tiles:putAttribute name="previousSection" value="diyr-270" />
	<tiles:putAttribute name="nextSection" value="cfmm-232" />
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
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm00550_005r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm00550_005r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CFMM 00550">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM
						550, p. 3. All rights reserved. Image provided by HMML.</em></small>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>Intended to be a Syriac and Garshuni parallel, but here only
					the Syriac column is present.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>