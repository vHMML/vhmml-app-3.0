<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%-- Removed this and tiles below because only one section, therefore no need for lesson index drop-down
 <c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set> --%>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Classical Antiquity: Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Instructions, Hints and Reminders" />
	<%--<tiles:putAttribute name="sectionDescription"
		value="Transcription Lesson" />--%>

	<%-- <tiles:putAttribute name="lessonIndex" value="${lessonIndex}" /> --%>

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12"><p>
			This first transcription exercise will give you practice transcribing
			a manuscript in <i>scriptio continua</i> &#8212; completely without
			word separation.
		</p>
		<%-- <br />
		<h4 class="explanatory  emphasis">Hints, helps, and reminders</h4>--%>
		<p>Remember the transcription principles and conventions we
			discussed in the <a href="${pageContext.request.contextPath}/school/lesson/basics-transcription/purposes"><i>Transcription Basics</i> lesson</a>. Here are the ones
			particularly applicable to this manuscript:</p>
		<ul>
			<li>DO add modern word separation, but do NOT add any other
				conventions for the modern presentation of text or in any other way
				correct the scribe's Latin.</li>

			<li>This manuscript uses one abbreviation: enclitic <i>-que</i>
				is written as <b>Q</b> with a dot after it. As we discussed in the
				Transcription Basics lesson, you should expand the abbreviation and
				put in parentheses any letters that you supply. So if the scribe
				writes <b>Q</b> followed by a dot, you will expand that: <b>q(ue)</b>
			</li>

			<li>When transcribing, we use capital letters only to indicate
				where the scribe has made a letter more prominent than the main text
				for emphasis. Since this manuscript is written entirely in
				majuscule, capital letters per se do not indicate emphasis. You
				should therefore transcribe the whole thing in lower case.</li>

			<li>Important related note: In Latin scripts from antiquity
				until the late Middle Ages, <b>u</b> and <b>v</b> are just variant
				forms of the same letter. <b>V</b> is used as the majuscule form in
				some scripts (as here), and at the beginning of words in some late
				medieval minuscule scripts. When you are transcribing everything
				into lower case, you should use <b>u</b> for all appearances of
				either the <b>u</b> form or the <b>v</b> form.
			</li>

			<li>Because this is a manuscript of Vergil's <i>Aeneid</i>, it is
				laid out in verse lines. Although the scribe does not separate words
				from one another, each line of writing does end with a complete
				word. You should not, therefore, have to worry about hyphenating
				words at line end.</li>

			<li>Since this copy is fragmentary and damaged, some letters are
				missing. As we practiced in the <a href="${pageContext.request.contextPath}/school/lesson/basics-transcription/transcription-conventions"><i>Basics</i> lesson</a>, you should use double
				square brackets [[ ]] to indicate any place where you can <i>see</i>
				that there is or was a letter that is now too damaged for you to
				make it out. Do <i>not</i> record letters or words that would have
				been on parts of the page that are now completely missing. That is,
				you do not need to use your knowledge of Vergil to presume how each
				line began. The important thing here is to record what you <i>see</i>
				in the manuscript.
			</li>
		</ul>
		</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
		<p>When you are ready, try transcribing the whole page! After
			you've had a try, you can view the answer key.</p>
			<div id="openseadragon1"
				style="width: 550px; height: 560px; background-color: #666; border-radius: 1%;"></div>
			<script type="text/javascript">
				var viewer = OpenSeadragon({
					id : "openseadragon1",
					prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
					zoomPerClick: "1.4", showRotationControl : "true",
					tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgall1394_/GeneratedImages/dzc_output.xml"
				});
			</script>
			<noscript>
				JavaScript needs to be enabled in order to utilize the zoom viewer.
				A static image of the manuscript may be seen: <img
					src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgall1394_/GeneratedImages/dzc_output_files/9/0_0.jpg"
					alt="manuscript page from St. Gall, Stiftsbibliothek, 1394">
			</noscript>
			<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
					1394, p. 12. (<a href="http://www.e-codices.unifr.ch"
					target="_blank">www.e&#8209;codices.unifr.ch</a>)</em></small>
		</div>
		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-12">

				<button class="btn left school showAnswer">Display
					Transcription Solution</button>
				<span class="exerciseAnswer"> <span class="answerTitle">Transcription
						Answer Key</span> <span class="answer">
						<blockquote>
							1 [[*]]enum struere et flammis adolere penates<br /> 2 [[*]]m aliae
							totidemq(ue) pares aetate ministri<br /> 3 ibus mensas onerant
							et pocula ponunt<br /> 4 on et tyrii per limina laeta frequentes<br />
							5 enere toris iussi discumbere pictis<br /> 6 antur dona aeneae
							mirantur iulum<br /> 7 grantisq(ue) dei uultus simulataque uerba<br />
							8 amq(ue) et pictum croceo uelamen acantho<br /> 9 ecipue
							infelix pesti deuota futurae<br /> 10 le[[*]]i mentem nequit
							ardescitque tuendo<br /> 11 e[[*]]issa et pariter puero
							donisq(ue) mouetur<br /> 12 ubi complexum aeneae colloq(ue)
							pependit<br /> 13 agnum falsi inpleuit genitoris amorem<br />
							14 inam petit haec oculis haec pectore toto<br /> 15 ret et
							interdum gremio fouet inscia dido<br /> 16 deat quantus miserae
							deus ac memor ille<br /> 17 ris acidaliae paulatim abolere
							sychaeum<br /> 18 [[**]]t et uiuo temptat praeuertere amore<br />
						</blockquote>
						<hr />
						<p>
							How did you do handling text with no word separation? In the next
							transcription lesson, we will have more practice with <i>scriptio
								continua</i> and we will learn some of the most common abbreviations
							used in late-antique and medieval manuscripts. Be sure to study
							the Christian Late Antiquity: Paleography lesson before trying
							the Christian Late Antiquity: Transcription lesson.
						</p>
				</span>
				</span>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>