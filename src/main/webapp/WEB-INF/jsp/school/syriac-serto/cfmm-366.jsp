<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 12: Mardin, CFMM 366, p. 152 (dated 1473)" />
	<tiles:putAttribute name="sectionDescription"
		value="<i>Cause of All Causes</i>" />
	<tiles:putAttribute name="previousSection" value="diyr-2" />
	<tiles:putAttribute name="nextSection" value="smmj-62" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm366_76r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm366_76r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from ">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM
						366, p. 152. All rights reserved. Image provided by HMML. </em></small>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>Note following features:</p>
				<ul>
					<li>the <i>semkat-&#7789;&#275;t</i> ligature in col. a, line
						4, and the similar <i>mim-&#7789;&#275;t</i> ligature in the last
						line of that column
					</li>
					<li>the abbreviated part of the word written in the margin in
						col. b, line 5 (but not in the previous line)</li>
					<li>final <i>l&#257;mad-&#257;lap</i>
						ligature, across a word boundary, in col. b, line 16
					</li>

					<li>a word correction in col. b, line 17</li>
				</ul>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>