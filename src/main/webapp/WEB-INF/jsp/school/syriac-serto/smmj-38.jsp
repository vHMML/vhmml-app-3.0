<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 9: Jerusalem, SMMJ 38, ff. 5v-6r (dated 1477)" />
	<tiles:putAttribute name="sectionDescription" value="Pauline Epistles" />
	<tiles:putAttribute name="previousSection" value="smmj-11" />
	<tiles:putAttribute name="nextSection" value="cfmm-420" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj38_6/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj38_6/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from ">
				</noscript>
				<small><em>Jerusalem, St. Mark's Monastery, SMMJ 38,
						ff. 5v-6r. All rights reserved. Image provided by HMML.</em></small>
				<p>&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					In contrast to the previous manuscript, the lines here are thinner.
					Again the script here is typical Serto, including a long <i>g&#257;mal</i>.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>