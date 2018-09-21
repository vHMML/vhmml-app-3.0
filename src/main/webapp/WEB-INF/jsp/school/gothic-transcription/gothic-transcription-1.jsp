<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription Exercise 1" />
	<tiles:putAttribute name="previousSection" value="gothic-trans-intro" />
	<tiles:putAttribute name="nextSection" value="gothic-transcription-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Transcribe the entire first column of this 12th-century
					manuscript.</p>
				<h4 class="lessonSubheading">Abbreviations in this manuscript</h4>
				<ul>
					<li>This scribe's common mark of abbreviation is a slightly
						curved diagonal upward stroke. The common mark is mainly used for
						omission of word- or syllable-final <b>-m,</b> or <b>-n</b>, but
						it can also be used to indicate that a word is abbreviated in some
						other way. For example, the passage to be transcribed has the word
						<b>uram</b>, for <i>u(est)ram</i>.
					</li>
					<li>There is one <i>nomen sacrum</i> that uses a straight
						common mark and also the Greek form of the letters in Jesus's
						name: <b>IHC</b>, for <i>iota-eta-sigma</i>. As we discussed in
						the Christian Late Antiquity lesson, you should still transcribe
						this as the Latin name <i>iesus</i>.
					</li>
					<li>This manuscript introduces another of the <b>p</b>
						abbreviations, one you haven't seen before. <b>P</b> with a stroke
						coming left off its descender and curving down around to the left
						stands for <i>pro</i>. As with the <i>per</i> abbreviation you saw
						in the last unit, the <i>pro</i> abbreviation can be used when <i>pro</i>
						is a syllable in a longer word, not just when it stands on its
						own.
					</li>
					<li><b>q</b> with a superscript <b>i</b> = <i>q(u)i</i>.</li>
				</ul>


				<h4 class="lessonSubheading">Letterforms</h4>
				<ul>
					<li>This scribe regularly uses larger letters to start new
						verses or sentences. You may transcribe those with upper case
						letters.</li>
					<li><b>e</b> with a lightning bolt-like stroke hanging off it
						is an <i>e caudata</i>, an <b>e</b> with a tail, in which the tail
						is a fossilized form of <b>a</b>. This is one way of representing
						the historical <b>ae</b> diphthong, which in postclassical Latin
						is pronounced like, and often spelled interchangeably with, the <b>e</b>.
						You should transcribe the <i>e caudata</i> as its own thing,
						distinct from the diphthong fully spelled out. You can represent
						it typographically using the <b>e</b> on your keyboard in
						conjunction with the <i>cedilla</i>.</li>
				</ul>
			</div>
		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-12">
			<p class="imageTitle">Transcribe lines 1 to 30 in the <i>first</i> column.</p>
				<div id="openseadragon1"
					style="width:650px; height: 560px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.7",
						minZoomLevel : "0.6",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v_annot/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v_annot/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="12th-century manuscript page  from the Walters collection with added line numbers for transcription exercise">
				</noscript>
				<small><em>Walters Art Museum, W.18, f. 11v. &copy;
						2011 Walters Art Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
				<button class="btn left school showAnswer">Display the
					Transcription Solution</button>
				<span class="exerciseAnswer"> <span class="answerTitle">Transcription
								Answer Key</span> <span class="answer">
										<p>
						1. saluum me fac&#183; Et continuo<br /> 2. ie(su)s extendens
						manum appre-<br /> 3. hendit eum&#183; et ait illi&#183;
						Modic&#x0229;<br /> 4. fidei quare dubitasti&#183;&acute; Et
						cu(m)<br /> 5. ascendisset in nauiculam&#183;&acute;<br /> 6.
						cessauit uentus&#183; Qui aute(m) in<br /> 7. nauicula
						erant&#183;&acute; uenerunt<br /> 8. et adorauerunt eu(m)
						dicentes&#183;<br /> 9. Vere dei filius es&#183; Et cum trans-<br />
						10. fretassent&#183;&acute; uenerunt in terra(m)<br /> 11.
						genesar&#183; Et cum cognouissent<br /> 12. eum uiri loci
						illius&#183;&acute; miser(un)t <br /> 13. in uniuersam regione(m)
						illam&#183;<br /> 14. Et obtulerunt ei omnes male<br /> 15.
						habentes&#183; et rogabant eum<br /> 16. ut uel fimbriam
						uestimenti<br /> 17. eius tangerent&#183; Et quicunq(ue)<br />
						18. tetigerunt&#183;&acute; salui facti sunt&#183;<br /> 19. Tunc
						accesserunt ad eum<br /> 20. ab ierosolimis scrib&#x0229; et
						phari-<br /> 21. sei dicentes&#183; Quare discipuli<br /> 22.
						tui transgrediuntur traditi-<br /> 23. ones seniorum? Non enim<br />
						24. lauant manus suas&#183; cum pa-<br /> 25. nem manducant&#183;
						Ipse autem<br /> 26. respondens ait illis&#183; Quare et<br />
						27. uos transgredimini mandatu(m)<br /> 28. dei p(ro)pter
						traditionem u(est)ram?<br /> 29. Nam d(eu)s dixit&#183; Honora
						patrem<br /> 30. et matrem&#183; et q(ui) maledixerit
					</p>
				</span></span>
				<p>&nbsp;</p>

			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>