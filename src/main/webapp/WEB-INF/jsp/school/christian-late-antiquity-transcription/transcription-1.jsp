<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Christian Late Antiquity: Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Transcription Exercise 1: The Bodleian Libraries, Auct. D. 2. 14, f. 130r. Uncials, Italy, ca. 600." />
	<tiles:putAttribute name="previousSection" value="exercises" />
	<tiles:putAttribute name="nextSection" value="transcription-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Transcribe lines 3-15 in the second column of this page.</p>

				<p>Remember to add modern word separation and expand
					abbreviations, but otherwise record exactly what the scribe wrote.
					Follow the manuscript's line breaks, but add a hyphen in brackets
					at line end if the scribe has split a word between two lines.
					You'll find two places in this passage where the scribe broke a
					word at line end.</p>
				<p class="imageTitle">Transcribe lines 3-15 from the right
					column.</p>
				<div id="openseadragon1"
					style="width: 650px; height: 800px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.9",
						maxZoomLevel : "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bodleian_auctd214_130anno/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="static/openseadragon/images/bodleian_auctd214_130anno/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Bodleian Library, Auct. D. 2. 14, folio 130 recto">
				</noscript>
				<small><em>The Bodleian Libraries, The University of
						Oxford, Auct. D. 2. 14, f. 130r.</em></small>
			</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display
					Transcription Solution</button>
				<span class="exerciseAnswer"> <span class="answerTitle">Transcription
						Answer Key</span> <span class="answer">
						<p>
							3 &nbsp;et uerbum erat apud <br /> 4 &nbsp;d(eu)m; <br /> 5
							&nbsp;et d(eu)s erat uerbum; <br /> 6 &nbsp;hoc erat in
							principio <br /> 7 &nbsp;apud d(eu)m; <br /> 8 &nbsp;omnia per
							ipsum fac(-) <br /> 9 &nbsp;ta sunt.´ <br /> 10 &nbsp;et sine
							ipso factu(m) <br /> 11 &nbsp;est nihil; <br /> 12 &nbsp;quod
							factum est.´ <br /> 13 &nbsp;in ipso uita erat; <br /> 14
							&nbsp;et uita erat lux ho(-) <br /> 15 &nbsp;minum;
						</p>
				</span>
				</span>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>