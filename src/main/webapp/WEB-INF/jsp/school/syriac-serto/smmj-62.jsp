<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 13: Jerusalem, SMMJ 62, ff. 4v-5r (1569)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Beth Gazzo</i>" />
	<tiles:putAttribute name="previousSection" value="cfmm-366" />
	<tiles:putAttribute name="nextSection" value="smmj-219" />
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
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj62_5/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj62_5/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from ">
				</noscript>
				<small><em>Jerusalem, St. Mark's Monastery, SMMJ 62,
						ff. 4v-5r. All rights reserved. Image provided by HMML.</em></small>
				<p>&nbsp;</p> 
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>Like <a href="${pageContext.request.contextPath}/school/lesson/syriac-serto/smmj-11"><i>SMMJ 11</i></a>, this script is made of thick, clear lines. As
					far as the letter-shapes go, there is nothing out of the ordinary
					for Serto here.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>