<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Insular Scripts: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription Exercise 1" />
	<tiles:putAttribute name="sectionDescription" value="Insular Half-Uncial, Ireland ca. 750" />
	<tiles:putAttribute name="previousSection" value="abbreviations" />
	<tiles:putAttribute name="nextSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>Transcribe the first six  lines.</p>
				<h4 class="lessonSubheading">Hints and Helps</h4>
				<p>
					In this manuscript, <b>cl</b> looks a lot like <b>d</b> and
					vice-versa. Note that the bottom of <b>l</b> curves, whereas the
					upright stroke of <b>d</b> is straight all the way down.
				</p>
				<p>At the end of line 3, what the scribe originally wrote has
					been corrected in a lighter ink. Don't worry about transcribing the
					correction. See if you can transcribe just what the original hand
					wrote.</p>
				<p>This scribe's word separation is excellent compared to what
					we saw in the last unit, but it's far from perfect. Stay alert!</p>
				<p>
					This hand may lead to minim-confusion. Keep an eye on <b>i</b>, <b>m</b>,
					<b>n</b>, and <b>u</b>, count minims, and don't forget that you
					need to end up with Latin that makes sense.
				</p>
				<p>
					Watch out for those <i>nomina sacra</i>!
				</p>
				<p>&nbsp;</p>
				<div class="row">
					<div class="col-lg-12">
						<p class="imageTitle">Transcribe lines 1-6.</p>
						<div id="openseadragon1"
							style="width:650px; height: 560px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							var viewer = OpenSeadragon({
								id : "openseadragon1",
								prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel : "0.7", 
								minZoomLevel : "0.6",
								maxZoomLevel : "9",
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51p8_anno/GeneratedImages/dzc_output.xml"
							});
						</script>

						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51p8_anno/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from St. Gallen 51">
						</noscript>
						
						<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
								51, p. 8. (<a href="http://www.e-codices.unifr.ch"
								target="_blank">www.e&#8209;codices.unifr.ch</a>)
						</em></small>

						<p>&nbsp;</p>
					</div>
				</div>
				<%-- <div class="row">
				<div class="col-lg-12">
					<div id="richTextEditor">
						<em>Enter your transcription:</em> <br />
						<noscript>JavaScript needs to be enabled in order to
							utilize the zoom viewer</noscript>
						<form method="post" action="somepage"
							title="Enter your transcription">
							<!--style="float:right; " -->
							<textarea name="editor1" id="editor1" rows="10" cols="80"></textarea>

							
							<script>
								CKEDITOR.replace('editor1');
							</script>
						</form>
						
					</div>
					</div>
						<hr />
					--%>
			
				<div class="row">
					<div class="col-lg-12">
						<button class="btn left school showAnswer">Display
							Transcription Solution</button>
						<span class="exerciseAnswer"> <span class="answerTitle">Transcription
								Answer Key</span> <span class="answer">
								<p>
									1. &nbsp;cum esset disponsata mater eius maria ioseph ante(-) <br />
									2. &nbsp;quam conuenirent inuenta (est) in utero habens de
									sp(irit)u s(an)c(t)o <br /> 3. &nbsp;JOSeph autem uir eius cum
									esset homo iustus et noluit <br /> 4. &nbsp;eam traducere sed
									uoluit occulte dimittere eam&#183; Haec <br /> 5. &nbsp;eo
									cogitante ecce angelus d(omi)ni in sompnis apparuit ei <br />
									6. &nbsp;dicens ioseph filii dauid noli timere accipire mariam
									<br />
								</p>
						</span>
						</span>
					</div>
				</div>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>