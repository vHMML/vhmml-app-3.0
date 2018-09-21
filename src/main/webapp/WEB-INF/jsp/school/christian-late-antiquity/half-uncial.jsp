<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Christian Late Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 4:  Half-Uncial" />
	<tiles:putAttribute name="previousSection" value="exercise-1" />
	<tiles:putAttribute name="nextSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon2"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.4",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395-p25/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395-p25/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Saint Gall Number 1395, page 25">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1395, p. 25. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small><br /> <br />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">LETTERFORMS</h4>
				<p>
					Important <strong>letters in Half-Uncial that are distinct
						from Uncial and earlier Capital forms</strong>, and that anticipate
					medieval and modern minuscule forms, are as follows:
				<ul>
					<li>Half-Uncial <b>a</b> has the form of modern lower-case
						script or cursive <b>a</b>, except that the letter is not closed
						at the top. This open-topped <b>a</b> is liable to be confused with
						<b>u</b>.
					</li>
					<li><b>b</b> in Half-Uncial has the form of modern lower-case
						<b>b</b>: an upright stroke with ascender on the left, and a bow
						to the right. (Compare Uncial <b>B</b>, which has the "uppercase"
						form found in ancient capitals.)</li>
					<li><b>d</b> likewise has the modern lower-case form, with a
						straight upright stroke ascending above minim-height, and a bow to
						the left.</li>
					<li>Half-Uncial <b>g</b> is a letter worth getting to know: it
						shows up again in several scripts of the early Middle Ages and is
						the ancestor of later minuscule-style <b>g</b>'s. Half-Uncial <b>g</b>
						has a crossbar at minim height, and a tail hanging from it that
						squiggles down to form a descender. It can look a little bit like
						the number <b>5</b>.
					</li>
					<li><b>r</b> is essentially the modern lower-case <b>r</b>,
						but note that the shoulder of the letter dips below minim-height
						just as the stroke is finishing. That dip is the key to telling <b>r</b>
						from <b>s</b>.</li>
					<li><b>s</b> in Half-Uncial and in a number of scripts that
						developed from it over the following centuries. Half-Uncial is the
						script that introduces the "tall" or "long" <b>s</b>
						(&nbsp;&#383;&nbsp;) familiar to us from early-modern script and
						handwriting. Tall <b>&#383;</b> is very easily confused with <b>r</b>!</li>
				</ul>
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-7 col-lg-6">
				<p>
					This word is <b>facerent</b>. Notice the open top of <b>a</b> and
					the difference between the <b>f</b> that starts the word and the <b>r</b>
					in the middle. (Note also that Half-Uncial uses "upper-case" <b>N</b>.)
				</p>
			</div>

			<div class="col-xs-7 col-lg-6">
				<p>
					<small><b>Text images below from</b> <em>St. Gallen,
							Stiftsbibliothek,<br /> Cod. Sang. 1395, p. 25. (<a
							href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>) 
					</em></small><br /> <img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/StGallen1395_FACERENT.png"
						width="428" height="95"
						alt="St Gallen1395 manuscript line showing FACERENT">
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-7 col-lg-6">
				<p>
					This letter sequence is <b>manifest</b>. Note again the open-topped
					<b>a</b>, "upper-case" <b>N</b>, and the difference between <b>f</b>
					and <b>s</b>. The <b>s</b> stops on the baseline, whereas the <b>f</b>
					descends below it.
				</p>
			</div>

			<div class="col-xs-7 col-lg-6">
				<p>
					<img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/StGallen1395_MANIFEST.png"
						width="482" height="95"
						alt="St Gallen1395 manuscript line showing MANIFEST">
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-7 col-lg-6">
				<p>
					This is <b>dicent</b>. Note the upright <b>d</b> (as opposed to the
					curvy, leftward-leaning <b>d</b> of Uncial).
				</p>
			</div>

			<div class="col-xs-7 col-lg-6">
				<p>
					<img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/StGallen1395_DICENT.png"
						width="482" height="95"
						alt="St Gallen1395 manuscript line showing DICENT">
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-7 col-lg-6">
				<p>
					This is <b>puer meus</b>. Pay close attention to the difference
					between the fourth letter, <b>r</b>, and the last letter, <b>s</b>.
					The shoulder of <b>r</b> curves down below minim-height, but that
					of <b>s</b> curves upward.
				</p>
			</div>

			<div class="col-xs-7 col-sm-6 col-md-6 col-lg-6">
				<p>
					<img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/StGallen1395_PUERMEUS.png"
						width="482" height="95"
						alt="St Gallen1395 manuscript line showing PUER MEUS">
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-7 col-lg-6">
				<p>
					This word is <b>gentibus</b>. Note the 5-shaped <b>g</b>,
					"lower-case" <b>b</b>, and tall <b>s</b> at the end.
				</p>
			</div>

			<div class="col-xs-7 col-lg-6">
				<p>
					<img
						src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/StGallen1395_GENTIBUS.png"
						width="482" height="95"
						alt="St Gallen1395 manuscript line showing GENTIBUS">
				</p>
			</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-lg-12">
				<p>Would you recognize these forms if you saw them in the wild?
					Would you be able to tell these Half-Uncial forms from Uncial ones?
					Review the list of important Half-Uncial letterforms above. If
					you're ready, click through to try a quick exercise in telling
					Half-Uncial from Uncial.</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>