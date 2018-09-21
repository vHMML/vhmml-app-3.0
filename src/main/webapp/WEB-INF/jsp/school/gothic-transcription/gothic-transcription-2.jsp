<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription Exercise 2" />
	<tiles:putAttribute name="previousSection"
		value="gothic-transcription-1" />
	<tiles:putAttribute name="nextSection" value="gothic-transcription-3" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Transcribe the entire page.</p>

				<h4 class="lessonSubheading">Hints and helps</h4>

				<p>Although this hand is very clear and careful, reading a
					script composed almost entirely of matching minims and hairline
					strokes takes some getting used to.</p>
				<p>
					<b>Abbreviations:</b> You should be able to decipher most of the
					abbreviations here based on what you already know, but some look
					rather different because of the script. The end of line 11 reads:
				</p>

				<p>
				<img src="${pageContext.request.contextPath}/static/img/school/gothic-transcription/Koln_Cod149_50r(um)(et)c(etera).jpg" width="160"   alt="detail from showing Latin abbreviation"> 
				&nbsp;&nbsp;&nbsp;
					<b>(um) (et) c(etera)</b>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					First comes the <b>2</b>-shaped <b>r</b>, which we discussed in this
					unit's scripts/paleography lesson, with a stroke&#8212;here a very
					elaborate stroke&#8212;through the last stroke of the <b>r</b> to stand for the
					omitted final <b>-um</b>. Then comes the <b>7</b>-shaped Tironian <b>et</b>, here in the
					later Gothic style with a stroke through it, followed by a <b>c</b> with a
					flourishy mark of abbreviation for <b>c(etera)</b>.
				</p>
				<p>
					The end of line 7 in the second column has a superscript mark that
					looks a bit like an <b>a</b> and stands for an omitted <b>ra</b>.
				</p>
				<p>
					The last word on the page is an <b>S</b> followed by a stylized
					<b>3</b>-like shape that signals an abbreviation by suspension. The word
					is <b>S(ed)</b>. (That <b>3</b>-like shape sometimes looks more like a
					semi-colon, and it can stand for various things in other contexts.)
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
			<p class="imageTitle">Transcribe all the lines.</p>
				<div id="openseadragon1"
					style="width:650px; height: 560px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.7", 
						minZoomLevel : "0.6",
						maxZoomLevel : "4",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/koln149_50r_annot/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/koln149_50r_annot/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page with black and reddish characters with added line numbers for transcription exercise">
				</noscript>
				<small><em>K&ouml;ln, Erzbisch&ouml;fliche
						Di&ouml;zesan- und Dombibliothek, Cod. 149, f. 50r. </em></small>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display Transcription Solution</button>
			
				<span class="exerciseAnswer"><span class="answerTitle">Transcription
								Answer Key</span> <span class="answer">
					
					<p>
						<u>Column 1</u><br />1. tes in pri-<br /> 2. mis glori-<br /> 3. ose semper<br /> 4.
						uirg(in)is ma-<br /> 5. rie genitri-<br /> 6. cis eiusdem<br />
						7. dei et domi-<br /> 8. ni n(ost)ri ie(s)u<br /> 9. chr(ist)i.
						Sed et <br /> 10. beatorum<br /> 11. ap(osto)lor(um) (et)
						c(etera).<br /> 12. In festo pe(n)-<br />
					</p>
					<p>
						<u>Column 2</u><br /> 1. thecostes i(n)-<br /> 2. fra actione(m).<br />
						3. Co(m)mu-<br /> 4. nican-<br /> 5. tes et diem<br /> 6.
						sacratissi-<br /> 7. mu(m) celeb(ra)n-<br /> 8. tes. quo
						sp(iritu)s<br /> 9. s(an)c(t)us ap(osto)lis<br /> 10. in numeris<br />
						11. linguis ap-<br /> 12. paruit. S(ed)<br />
					</p>
				</span></span>
				<p>&nbsp;</p>
			</div>
		</div>
			<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>