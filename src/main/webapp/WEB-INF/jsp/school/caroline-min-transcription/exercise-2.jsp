<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Caroline Minuscule: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription 2" />
	<tiles:putAttribute name="previousSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Transcribe the first 13 lines (omitting the running title).</p>
				<p>&nbsp;</p>


				<h4 class="lessonSubheading">Hints and helps</h4>
				<p>This 9th-century copy of the Gospels has less-clear word
					separation than some other manuscripts we have looked at and is
					more highly abbreviated. The story, though, is a familiar one.</p>
				<p>
					There are several <i>nomina sacra</i> in this text but they are not
					set off by special letterforms and are not clearly separated from
					nearby words. Watch out for them!
				</p>
				<p>This scribe uses a fine acute accent to mark monosyllabic
					words. Be careful not to confuse those marks with the common mark
					of abbreviation.</p>
				<p>This scribe clearly uses majuscule letters at the start of
					major sense units. You may transcribe them as capitals.</p>
				<p>As in the last exercise, you can just use a period to
					represent the scribe's various forms of punctuation&#8212;but note the
					variety of his symbols as you transcribe.</p>
				<p>&nbsp;</p>
			</div>
			</div>
			

				<div class="row">
				<div class="col-lg-12">
				<p class="imageTitle">Transcribe lines 1-13.</p>
					<div id="openseadragon1"
						style="width: 650px; height: 560px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon1",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "0.7",
							minZoomLevel : "0.5",
							maxZoomLevel : "7",//fixed Sept 2015
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w4-38r-annot/GeneratedImages/dzc_output.xml"
						});
					</script>

					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w4-38r-annot/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript page from Walters W.4">
					</noscript>
					<small><em>Walters Art Museum, W.4, f. 38r, &copy; 2011
							Walters Art Museum, used under a <a
							href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
							target="_blank">CC BY-SA license</a>.
					</em></small>
					<p>&nbsp;</p>
				</div>
				</div>
				<%--  <div class="row">
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
					</div></div>
					--%> 
					<hr />
					<div class="row">
						<div class="col-lg-12">
							<button class="btn left school showAnswer">Display
								Transcription Solution</button>
							<span class="exerciseAnswer"> <span class="answerTitle">Transcription
									Answer Key</span> <span class="answer">
									<p>
										1. &nbsp;Tunc assumpsit eu(m) diabolus&#183; in s(an)c(t)am
										ciuitate(m)&#183; et sta(-) <br /> 2. &nbsp;tuit eu(m) supra
										pinnaculu(m) te(m)pli et dix(it) ei&#729; Si filius <br /> 3.
										&nbsp;d(e)i es&#183; mitte te deorsum&#729; Scriptu(m) e(st)
										eni(m)&#183; Quia <br /> 4. &nbsp;angelis suis mandabit de
										te&#183; et in manibus tol(-) <br /> 5. &nbsp;lent te&#183;
										ne forte offendas ad lapide(m) pede(m) tuu(m)&#183; <br /> 6.
										&nbsp;Ait illi ie(su)s rursum&#183; Scriptum e(st)&#183;&#180;
										n(on) te(m)ptabis d(omi)n(u)m <br /> 7. &nbsp;d(eu)m
										tuu(m)&#729; Iteru(m) assu(m)psit eu(m) diabolus in monte(m) <br />
										8. &nbsp;excelsu(m) ualde&#183; et ostendit ei om(ni)a regna
										mun(-) <br /> 9. &nbsp;di&#183; et gloriam eoru(m)&#183; et
										dix(it) illi&#729; Haec omnia tibi <br /> 10.
										&nbsp;dabo&#183;&#180; si cadens adoraueris me&#729; Tunc
										dicit ei ie(su)s&#729; <br /> 11. &nbsp;Vade satana&#729;
										Scriptu(m) e(st)&#183; D(omi)n(u)m d(eu)m tuu(m) adorabis <br />
										12. &nbsp;et illi soli seruies&#729; Tunc reliquit eu(m)
										diabolus&#729; <br /> 13. &nbsp;et ecce angeli
										accesserunt&#183; et ministrabant ei&#729; <br />

									</p>
							</span>
							</span>
				<p>&nbsp;</p>

				<!--end of wrapper -->
				<p>&nbsp;</p>

			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>