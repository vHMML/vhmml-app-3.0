<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 9: Tell Kaif, QAACT 10, f. 4r (16th century)" />
	 <tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="cam-1" />
	<tiles:putAttribute name="nextSection" value="dfm-13" />
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
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/qacct10_4r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/qacct10_4r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from QAACT 10">
				</noscript>
				<small><em>Tell Kaif, Qalb Al-Aqdas Chaldean Church,
						QACCT 10, f. 4r. All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<table class="table syriacLetterforms">

					<caption>Distinctive Letterforms</caption>
					<tbody>
						<p>&nbsp;</p>
						<tr>
							<td><i>&#257;lap</i></td>
							<td>of the Estrangela type</td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td>also of the Estrangela type</td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>