<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Classical Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 6: Exercise" />
	<tiles:putAttribute name="previousSection" value="compare-capitals" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p>Which image below is written in Square Capitals? (You can
					click and zoom to look at the images in detail.)</p>
				a.
				<div id="openseadragon1"
					style="width: 900px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "3",
						minZoomLevel : "0.4",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from  page showing  script detail">
				</noscript>
			</div>
		</div>
		<%--<hr /> --%>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				b.
				<div id="openseadragon2"
					style="width: 900px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "3", // default 0
						minZoomLevel : "0.4",
						maxZoomLevel : "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="a different  manuscript page  showing detail  of  script">
				</noscript>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display the
					Answer</button>
				<span class="exerciseAnswer">
					<p>b. The bottom image (St. Gallen 1394) is in Square Caps</p>
					<hr />
					<p>How did you do? In future lessons, we will constantly be
						comparing scripts to each other, and new scripts to ones we've
						already studied. Learning to identify scripts both from their
						general appearance in the context of a whole page and from
						particular letterforms is the core task of learning paleography.
						You'll get lots of practice. The more you look, the better at it
						you'll get!</p>
				</span>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<hr />
				If you read Latin and would like to try reading a manuscript in
				Square Capitals written in <i>scriptio continua</i>, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/classical-antiquity-transcription/transcription-lesson">Classical
				Antiquity Transcription</a></i> lesson. Otherwise, go directly to the
				<i><a href="${pageContext.request.contextPath}/school/lesson/christian-late-antiquity/intro">Christian Late Antiquity Paleography</a></i> lesson for the next chapter in
				the history of script.
				<p></p>
			</div>
		</div>

		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>