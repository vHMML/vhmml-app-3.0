<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac Transcription" />
	<tiles:putAttribute name="sectionName" value="Section 2: Estrangela" />
	<tiles:putAttribute name="sectionDescription"
		value="Jerusalem, SMMJ 129 (Quriaqos), p. 185" />
	<tiles:putAttribute name="previousSection"
		value="syriac-transcription-intro" />
	<tiles:putAttribute name="nextSection"
		value="syriac-east-transcription" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p class="imageTitle">Please transcribe all lines from page 185,
					both column a and column b.</p>
				<div id="openseadragon1"
					style="width: 600px; height: 800px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj129_101_annot/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj129_101_annot/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page showing two columns of text on two pages from manuscript from St. Mark's Monastery in Jerusalem">
				</noscript>
				<small><em>Jerusalem, St. Mark's Monastery, SMMJ 129,
						p. 185. All rights reserved. Image provided by HMML.</em></small> &nbsp;

			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<button class="btn left school showAnswer">
					Transcription Solution for Column <b>a</b>
				</button>
				<span class="exerciseAnswer"><span class="answerTitle">Column
						"a" Transcription Answer Key</span><span class="answer"> <img
						src="${pageContext.request.contextPath}/static/img/school/syriac-transcription/smmj129_colA_composite.jpg"
						width="550"
						alt="Syriac solution answer for transcribing column A, SMMJ  129, page 185">

				</span></span>
				<p>&nbsp;</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">
					Transcription Solution for Column <b>b</b>
				</button>
				<span class="exerciseAnswer"><span class="answerTitle">Column
						"b" Transcription Answer Key</span><span class="answer"> <img
						src="${pageContext.request.contextPath}/static/img/school/syriac-transcription/smmj129_colB_composite.jpg"
						width="550"
						alt="Syriac solution answer for transcribing column B from manuscript SMMJ  129, page 185">

				</span></span>


				<p>&nbsp;</p>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>