<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Insular Scripts: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription Exercise 2" />
	<tiles:putAttribute name="sectionDescription" value="Iona, between 688 and 713 CE" />
	<tiles:putAttribute name="previousSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
			
				<p>Transcribe the end of line 8 to the beginning of line 26 from the second column.
					
				</p>
				
				<h4 class="lessonSubheading">Hints and helps</h4>
				<p>
					This scribe uses a form of <b>ae</b> ligature that looks like an <b>e</b>
					with a little tag that looks like part of a <b>u</b> hanging off
					its left side (as for example in the first two words in line 20).
					You may just transcribe this <b>ae</b>, or if you can type the
					ligature, <b>&#230;</b>. Do not treat it as an abbreviation.
				</p>
				<p>
					The abbreviation at the end of line 19 is for <b>q(uam)</b>. We
					will learn more about the <b>p-</b> and <b>q-</b> abbreviations in
					future lessons. Their use in Insular manuscripts is eccentric.
				</p>
				<p>
					As in the <a href="${pageContext.request.contextPath}/school/lesson/insular-transcription/exercise-1">previous manuscript</a>, watch out for <b>d</b> that looks
					like <b>cl</b>.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			
			<p class="imageTitle">Transcribe the <i>second column</i>, from the end of line 8 (the <i>C</i>
					with red wash in it)<br /> to line 26, ending mid-line with <i>est</i>.
			</p>
				<div id="openseadragon1"
					style="width:650px; height: 560px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.8", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stadtbibgen1p2_anno/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stadtbibgen1p2_anno/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Schaffhausen 1">
				</noscript>
				<small><em>Schaffhausen, Stadtbibliothek, Gen. 1, p. 2.
						(<a href="http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>)
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

						<!-- style="width:30%; height: 100% !important; " 
                //width:360px height:560px  // Replace the <textarea id="editor1"> with a CKEditor

                // instance, using default configuration.-->
						<script>
							CKEDITOR.replace('editor1');
						</script>
					</form>
				</div>
			</div>

			<hr />
			<p>&nbsp;</p>
		</div>
--%>

		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display
					Transcription Solution</button>
				<span class="exerciseAnswer"> <span class="answerTitle">Transcription
						Answer Key</span> <span class="answer">
						<p>
							8. &nbsp;&nbsp;&nbsp;Co(-) <br /> 9. &nbsp;&nbsp; lu(m)ba eteni(m)
							semplex et <br /> 10. &nbsp;innocens (est) auis&#183; hoc
							itaq(ue) <br /> 11. &nbsp;uocamine et homo sem(-) <br /> 12.
							&nbsp;plex innocensq(ue) nuncupa(-) <br /> 13. &nbsp;ri
							debuit&#183; qui in se colu(m) <br /> 14. &nbsp;binis morib(us)
							sp(irit)ui s(an)c(t)o hos(-) <br /> 15. &nbsp;pitiu(m)
							pr&#230;buit&#183; Cui nomi(-) <br /> 16. &nbsp;ni non
							inconuenienter <br /> 17. &nbsp;congruit illud&#183; quod in <br />
							18. &nbsp;prouerbiis scriptum (est) <br /> 19. &nbsp;Melius
							(est) nomen bonu(m) q(uam) <br /> 20. &nbsp;diuiti&#230;
							mult&#230;&#183; Hic igi(-) <br /> 21. &nbsp;tur noster
							pr&#230;sul non <br /> 22. &nbsp;inmerito non solu(m) a die(-) <br />
							23. &nbsp;bus infanti&#230; hoc uoca(-) <br /> 24. &nbsp;bulo
							d(e)o donante ad(-) <br /> 25. &nbsp;ornatus proprio dita(-) <br />
							26. &nbsp;tus est &#8217; <br />
						</p>
				</span>
				</span>
				<p>&nbsp;</p>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>