<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName" value="Section 8: Diyarbakir, DIYR 335, f. 157v (16th/17th century)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Menaion</i>" />
	<tiles:putAttribute name="previousSection" value="diyr-63" />
	<tiles:putAttribute name="nextSection" value="hmtr-26" />
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
						defaultZoomLevel : "0.6",
						minZoomLevel : "0.4",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr335_157v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr335_157v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from DIYR 00335">
				</noscript>
				<small><em>Diyarbakir, Meryem Ana Syriac Orthodox
						Church, DIYR 335, f. 157v. All rights reserved. Image provided by
						HMML.</em></small>
				<p>&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">


				<p>
					This manuscript shows few features that we have not seen before,
					but note the overall compact footprint of each letter. In addition,
					note the sideways writing of the word <i>&#7717;ass&#257;m&#257;&#8217;it</i> at
					line-end at f. 157vb, line 6 from the bottom.
				</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>