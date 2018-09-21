<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac: Twentieth and Twenty-First Century Manuscripts - Serto Examples" />
	<tiles:putAttribute name="sectionName"
		value="Section 2.8: Midyat, MGMT 83, p. 3 (dated 1971)" />
	<tiles:putAttribute name="sectionDescription"
		value="Anthology on Liturgical Topics " />
	<tiles:putAttribute name="previousSection" value="mgmt-81" />
	<tiles:putAttribute name="nextSection" value="zfrn-385" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/mgmt00083_0004v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/mgmt00083_0004v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from MGMT 83">
				</noscript>
				<small><em>Midyat, Mor Gabriel Monastery, MGMT 83, p.
						3. All rights reserved. Image provided by HMML.</em></small>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>This manuscript is paginated in western Arabic numerals and
					in Syriac letters. As with <a href="${pageContext.request.contextPath}/school/lesson/syriac-20-21c/mgmt-81"><i>MGMT 81</i></a> the text is copied into a
					composition book with two columns, and as with <a href="${pageContext.request.contextPath}/school/lesson/syriac-20-21c/cfmm-555"><i>CFMM 555</i></a> there is a
					footnote.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>