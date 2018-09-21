<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Christian Late Antiquity: Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Transcription Exercise 3: St. Gallen, Stiftsbibliothek, Cod. Sang. 1395, p. 25. Fragments of Vulgate (Matthew). Half-Uncial. Northern Italy, ca. 410-420" />
	<tiles:putAttribute name="previousSection" value="transcription-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Now it's time to try transcribing Half-Uncials. Transcribe
					lines 7-21 in the left column. (Do not transcribe the marginal
					annotations.)</p>

				<p>This passage does not have any abbreviations, but it does
					have several word breaks at line end, which you will want to
					indicate with a hyphen in parentheses: (-)</p>

				<p>Even though this script is the ultimate ancestor of our
					lower-case alphabet, it has some features that may trip you up
					until you get used to them. Here are some things to look out for:</p>

				<p>
					When transcribing Half-Uncials, be very careful not to confuse <b>f</b>,
					<b>r</b>, and <b>s</b>, or to confuse <b>a</b> and <b>u</b>. In
					this manuscript, <b>c</b>, <b>e</b>, and <b>t</b> also have a
					tendency to look similar.
				</p>

				<p>
					This word is <b>aduersus</b>. Note the low shoulder of <b>r</b> and
					the higher shoulder of the two tall <b>s</b>'s: <img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity-transcription/StGallen1395_ADUERSUS.jpg"
						width="344" height="79" alt="aduersus In Latin">
				</p>

				<p>
					This is a <b>u</b> followed by an <b>a</b>. Note how the first
					stroke of <b>a</b> curves inward at the top, but that of the <b>u</b>
					doesn't. <img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity-transcription/StGallen1395_UA.jpg"
						width="93" height="45" alt=" letter u followed by a ">
				</p>

				<p>
					Look out for the <b>li</b> ligature, which looks like this: <img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity-transcription/StGallen1395_LI.jpg"
						width="50" height="69"
						alt="The letters l and i  combined in a single ligature">
				</p>
				<p class="imageTitle">Transcribe lines 7-21 in the left column,
					but ignore any marginal annotations.</p>
				<div id="openseadragon1"
					style="width: 650px; height: 680px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395p25anno/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="static/openseadragon/images/stgallen-codsang1395p25anno/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from St. Gall, Stiftsbibliothek  manuscript number 1395, page 25">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1395, p. 25. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>
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
							7 &nbsp;Quis erit ex uobis homo <br /> 8 &nbsp;qui habeat ouem <br />
							9 &nbsp;unum et si ceciderit <br /> 10 &nbsp;haec sabbatis in
							fo(-) <br /> 11 &nbsp;ueam nonne tene(-) <br /> 12 &nbsp;bit et
							leuabit eam <br /> 13 &nbsp;quanto magis me(-) <br /> 14
							&nbsp;lior est homo oue <br /> 15 &nbsp;itaque licet sabbatis <br />
							16 &nbsp;bene facere tunc <br /> 17 &nbsp;ait homini exten(-) <br />
							18 &nbsp;de manum tuam et <br /> 19 &nbsp;extendit et restitu(-)
							<br /> 20 &nbsp;ta est sanitati sicut <br /> 21 &nbsp;altera
						</p>
				</span>
				</span>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>