<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Transcription" />
	<tiles:putAttribute name="sectionName" value="Transcription Exercise 3" />
	<tiles:putAttribute name="previousSection"
		value="gothic-transcription-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Please transcribe the first 14 lines from the left column from this breviary-missal from Northeast France (ca. 1290-1310).</p>

				<h4 class="lessonSubheading">New abbreviations and letterforms</h4>

				<p>
					When this scribe writes two <b>i</b>s next to each other, he writes
					<b>ij</b>, which is a device that emerges in the Gothic period to
					help distinguish a series of is from other groups of minims. You
					should transcribe <b>ij</b> as <b>ii</b>, since the <b>j</b> is
					just a variant form of <b>i</b> and does not represent the modern
					English letter <b>j</b>.
				</p>

				<p>
					As in the last manuscript, you will encounter both the 2-shaped <b>r</b>
					after round letters, and the <b>-rum</b> abbreviation, which is the
					2-shaped <b>r</b> with a stroke through the final stroke of the <b>r</b>.
					They look rather different in this hand than they did in the very
					angular hand of the last manuscript.
				</p>

				<p>
					This is a 2-shaped <b>r</b> following <b>d</b>:&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/gothic-transcription/Bethune_Brev7r_2-shaped_r_following_d.jpg" width="90"   alt="detail from Bethune Breviary showing two characters combined into what looks like one">
				</p>
				
				<p>
					and this is the <b>-rum</b> abbreviation, in the genitive plural <b>-orum</b>:&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/gothic-transcription/Bethune_Breviary7rf_ or(um).jpg" width="90"   alt="detail showing two characters combined into what looks like one">
					You would transcribe this <b>or(um)</b>, since the stroke
					represents the omitted <b>-um</b>.
				</p>
				<p>
					This manuscript is your first time seeing the abbreviation for
					final <b>-us</b>, which looks like a superscript <b>9</b>. It
					appears in the first word on this page, and also in line 11.
				</p>
				<p>
					You will also see a form like a <b>3</b>, which can represent
					various omitted final letters.
				</p>
				<p>
					Here, it is used with <b>s</b> to abbreviate <b>sed</b>:&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/gothic-transcription/BethuneBreviary7r_sed.jpg" width="80"   alt="detail showing two characters combined into what looks like one">
					Transcribe <b>s(ed)</b> . This is the same abbreviation that
					appeared as the last word in the <a href="${pageContext.request.contextPath}/school/lesson/gothic-transcription/gothic-transcription-2">previous exercise</a>.
				</p>
				<p>
					In line 14, the common mark of abbreviation is used four times:
					once over a <i>nomen sacrum</i>; once as usual to indicate omission
					of a final <b>m</b>; and twice to indicate simply that <i>something</i>
					has been omitted in abbreviation. The first word in that line is <b>Q(uonia)m</b>
					and the last word is <b>iust(orum)</b>.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			<p class="imageTitle">Transcribe the first 14 lines in the <i>first</i> column.</p>
				<div id="openseadragon1"
					style="width:650px; height: 650px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.9",
						minZoomLevel : "0.6",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary7r_annot/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary7r_annot/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page with two columns, beginning with large intricately detailed letter B, from Hill Museum & Manuscript Library collection  with added line numbers for transcription exercise">
				</noscript>
				<small><em>HMML, Bethune MS 2, f. 7r. Used under a <a
						href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.
				</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
				<button class="btn left school showAnswer">Display 
					Transcription Solution</button>
				<span class="exerciseAnswer"> <span class="answerTitle">Transcription
								Answer Key</span> <span class="answer">					
					<p>
						<b>Column 1</b><br /> 1. Beat(us) uir<br /> 2. qui no(n)<br /> 3.
						abiit in<br /> 4. consilio<br /> 5. impior(um)<br /> 6. et i(n)
						uia<br /> 7. peccator(um) non stetit.&acute; et in<br /> 8.
						cathedra pestilentie n(on) sedit&#183;<br /> 9. Sed in lege
						d(omi)ni uoluntas&#183;<br /> 10. Et erit tanqua(m) lignum&#183;<br />
						11. Et folium ei(us) no(n) defluet.&acute;<br /> 12. Non sic
						impii non sic.&acute; s(ed)<br /> 13. Ideo n(on) resurgunt impii.<br />
						14. Q(uonia)m nouit d(omi)n(u)s uia(m) iust(orum)&#183;<br />
					</p>
				</span></span>
				<p>&nbsp;</p>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>