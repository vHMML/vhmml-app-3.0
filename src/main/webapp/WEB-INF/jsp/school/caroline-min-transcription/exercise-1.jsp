<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Caroline Minuscule: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription 1" />
	<tiles:putAttribute name="previousSection" value="more-abbreviations" />
	<tiles:putAttribute name="nextSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					Transcribe the first 17 lines in <u>column 2</u>.
				</p>
				<p>&nbsp;</p>


				<h4 class="lessonSubheading">Hints and helps</h4>
				<p>
					This 9th-century Bible from Tours has good word separation and
					fairly clear letters, but it has a few early-Caroline features that
					may cause confusion. In particular, watch out for three forms of <b>a</b>:
				</p>
				<p>
					an ordinary Caroline <b>a</b> with a curved sloping stroke and a
					small lobe on the left: <img
						src="${pageContext.request.contextPath}/static/img/school/carolingian-transcription/stgal75crop1.jpg"
						alt=" ">
				</p>
				<p>
					an <b>a</b> that looks like <b>cc</b> and is liable to confusion
					with <b>u</b>, as here: <img
						src="${pageContext.request.contextPath}/static/img/school/carolingian-transcription/stgal75crop2.jpg"
						alt=" "> = <b>ula</b>
				</p>
				<p>
					an <b>a</b> that resembles an <b>o</b> plus a <b>c</b>, which this
					scribe uses in ligature following a pointy-shouldered <b>r</b>: <img
						src="${pageContext.request.contextPath}/static/img/school/carolingian-transcription/stgal75crop3.jpg"
						alt=" "> = <b>ra</b>
				</p>

				<p>&nbsp;</p>


				<h4 class="lessonSubheading">Reminder: recording scribal
					alterations</h4>
				<p>This exercise gives you a chance to try out the 
				<a href="${pageContext.request.contextPath}/school/lesson/basics-transcription/transcription-conventions">conventions we introduced in the <i>Transcription Basics</i> lesson</a> 
				for recording alterations to the original text.</p>
				<p>
					This transcription passage contains one place where the scribe
					erased two letters because he had written them twice by mistake,
					and another place where he seems to have erased a letter at the
					beginning of a line. Put the letters that were erased, if you can
					make them out, inside square brackets: <b>&#91; &#93;</b>. If you
					can't make them out, leave a blank space between the brackets to
					indicate that something has been erased.
				</p>
				<p>
					There is also one place where the scribe, or a corrector, inserted
					a letter that had been left out. You should indicate a scribal
					insertion above the line by putting the inserted letter between
					outward-leaning slash marks: <b>&#92; &#47;</b>
				</p>
				<p>
					<b>Note on punctuation:</b> This scribe uses a variety of
					punctuation symbols that are hard to reproduce typographically. For
					this exercise, just use a period each time the scribe inserts one
					of his punctuation marks.
				</p>
</div> </div>
				<div class="row">
				<div class="col-lg-12">
				<p class="imageTitle">Transcribe lines 1-17 from the <i>second column</i>.</p>
					<div id="openseadragon1"
						style="width:650px; height: 560px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon1",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "0.8", // normally defaults to 0
							minZoomLevel : "0.7",
							maxZoomLevel : "8",
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang75-p521_annot/GeneratedImages/dzc_output.xml"
						});
					</script>

					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang75-p521_annot/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript page from St. Gallen 51">
					</noscript>
					<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
							75, p. 521. (<a href="http://www.e-codices.unifr.ch"
							target="_blank">www.e&#8209;codices.unifr.ch</a>)
					</em></small>

				
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

							<!-- style="width:30%; height: 100% !important; " 
                //width:360px height:560px  // Replace the <textarea id="editor1"> with a CKEditor

                // instance, using default configuration.-->
							<script>
								CKEDITOR.replace('editor1');
							</script>
						</form>
					</div>
					</div>
					--%>
					<hr />
					<div class="row">
						<div class="col-lg-12">
							<button class="btn left school showAnswer">Display
								Transcription Solution</button>
							<span class="exerciseAnswer"> <span class="answerTitle">Transcription
									Answer Key</span> <span class="answer">
									<p>
										1. &nbsp;OSculetur me osculo oris sui <br /> 2. &nbsp;quia
										meliora sunt ubera tua <br /> 3. &nbsp;uino flagrantia
										unguentis op(-) <br /> 4. &nbsp;timis. Oleum effusum nomen
										tuum <br /> 5. &nbsp;ideo adulescentulae dilexerunt te. trahe
										me <br /> 6. &nbsp;post te. curremus in odorem unguentorum <br />
										7. &nbsp;tuorum. Introduxit me rex in cellaria sua. <br /> 8.
										&nbsp;exultabimus et laetabimur in te. memores <br /> 9.
										&nbsp;&#91;es&#93; uberum tuorum. sup(er) uinum recti diligunt
										te. <br /> 10. &nbsp;VOX SYNAGOGAE <br /> 11. &nbsp;Nigra
										sum sed formosa filiae hierusa(-) <br /> 12. &nbsp;lem sicut
										tabernacula caedar. sicut <br /> 13. &nbsp;&#91; &#93;pellis
										salomon&#92;i&#47;s. Nolite me considerare <br /> 14.
										&nbsp;quod fusca sim. quia decoloraruit me sol. filii <br />
										15. &nbsp;matris meae pugnauerunt contra me. <br /> 16.
										&nbsp;posuerunt me custodem in uineis. Uine(-) <br /> 17.
										&nbsp;am meam non custodiui. VOX ECCLESIAE <br />
									</p>
							</span>
							</span>

					</div>

				</div>
				<!--end of wrapper -->

				<p>&nbsp;</p>

	</tiles:putAttribute>
</tiles:insertTemplate>