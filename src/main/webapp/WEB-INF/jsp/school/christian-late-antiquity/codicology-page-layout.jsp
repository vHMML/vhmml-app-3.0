<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>
<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Christian Late Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 6:  Codicology and Page Layout in Christian Late Antiquity" />
	<tiles:putAttribute name="sectionDescription"
		value="WRITING SUPPORTS AND THE FORM OF THE BOOK" />
	<tiles:putAttribute name="previousSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					The period of the development of Half-Uncial and Uncial script is
					also the period of the <b>transition from roll to codex</b> as the
					dominant form of the book. The reasons for the rise of the codex
					are much disputed. The numbers of surviving books in each form,
					however, make it clear that the codex was becoming the dominant
					form by the time the earliest examples of Half-Uncial and Uncial
					script appear.
				</p>
				<ul>
					<li>2nd century: 90% of surviving books are rolls.</li>
					<li>4th century: 80% of surviving books are codices.</li>
					<li>6th century: nearly 100% of surviving books are codices.</li>
				</ul>
				<p>
					Furthermore, 80% of surviving Christian books from late antiquity
					are in codex form.<br /> <small>Source: <a
						href="https://books.google.com/books?id=yJqDGu1zZ3AC&lpg=PA216&ots=Nyl4ZJXGsf&dq=The%20Oxford%20Handbook%20of%20Papyrology&pg=PA256#v=onepage&q=The%20Oxford%20Handbook%20of%20Papyrology&f=false"
						target="_blank">William A. Johnson, "The Ancient Book," <em>The
								Oxford Handbook of Papyrology</em></a>, ed. Roger S. Bagnall (Oxford,
						2009), 256-281.
					</small>
				</p>
				<p>As a result, we almost invariably see Half-Uncial (2nd-5th
					centuries, but with most survivals from late in that period) and
					Uncial script (5th-8th centuries) in codices.</p>
				<p>Those codices are usually, though not always, made of
					parchment. There were papyrus codices in antiquity, but papyrus is
					comparatively ill-suited to the codex form because it does not
					stand up well to folding.</p>

				<p>Papyrus, a product of Egypt, did continue to be used in
					Europe into the early Middle Ages, but with less and less frequency
					by the start of the 8th century. One of the Uncial manuscripts we
					looked at earlier in this lesson is actually a mixed
					parchment-papyrus codex from the turn of the 8th century in Gaul.
					Parchment forms the outer bifolium of each quire, and the inner
					bifolia are made of papyrus. (We see something similar with
					parchment and paper manuscripts at the end of the Middle Ages.)
					This is far from a common situation and seems to be an artifact of
					the transition from one writing support to another.</p>
				<br />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6 lesson-image">
				<div id="openseadragon1"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.7",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/geneva_lat0016_004v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/geneva_lat0016_004v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Geneva">
				</noscript>
				<small><em>Geneva, Biblioth&egrave;que de
						Gen&egrave;ve, MS lat. 16, f. 4v.<br /> <a
						href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>
				</em> (on parchment) </small>
			</div>

			<div class="col-lg-6 lesson-image">
				<div id="openseadragon2"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/geneva_lat0016_005r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/geneva_lat0016_005r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Geneva ">
				</noscript>
				<small><em>Geneva, Biblioth&egrave;que de
						Gen&egrave;ve, MS lat. 16, f. 5r.<br /> <a
						href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>
				</em> (on papyrus) </small>
				<hr />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">
					PAGE LAYOUT (<i>MISE EN PAGE</i>)
				</h4>
				<p>The interplay of script, text, decoration (if any), and blank
					space on the page varies over time, from region to region, and with
					type of book. Beginning with this lesson, we will consider layout
					features that we associate with the scripts we are studying and
					with the periods we are focusing on in each unit.</p>

				<p>The emergence of the codex, whether of papyrus or parchment,
					seems to be associated with a new aesthetic of the layout of text
					on the page. Whereas the papyrus roll presented the reader with a
					series of long, narrow columns, the earliest codices usually,
					though not always, have single-column pages.</p>

				<p>The written area of these books is usually framed by ample
					empty parchment. Sparse marginal apparatus might include marks
					indicating correspondences with other texts, collation with another
					version of the text, or scriptural citations. But manuscripts of
					this period do not have the extensive glossing and marginal commentaries
					we see later in the Middle Ages.</p>
					<p> &nbsp; </p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6  lesson-image">
				<div id="openseadragon3"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.6",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/wien15f6r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/wien15f6r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Austrian National Library, Manuscript 15,  folio 6 recto">
				</noscript>
				<small> <em>&#xd6;sterreichische Nationalbibliothek, MS
						15, f. 6r,<br /> used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-NC-SA 3.0 license</a>.
				</em></small>
			</div>

			<div class="col-lg-6  lesson-image">
				<div id="openseadragon4"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BAV-Pal.lat.210.f.004r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/BAV-Pal.lat.210.f.004r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Vatican Library">
				</noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Pal.
						lat. 210 f. 4r.</em></small>
				<hr />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">LANGUAGE ON THE PAGE</h4>
				<p>
					Texts from before the 8th century, especially those from areas
					where late forms of Latin were spoken, observed the ancient habit
					of writing in <i><b>scriptio continua</b></i>, with no breaks
					between words.
				</p>

				<p>
					However, in late antiquity we do see several scribal strategies for
					helping the reader perceive sense- and syntax-units on the page.
					One is the layout <b><i>per cola et commata</i></b> &#8212; "by
					clause and phrase" &#8212; introduced by Jerome in his Vulgate
					translation of the Bible. In a copy of the Bible laid out <i>per
						cola et commata</i>, every new sense/syntax unit starts on a new line,
					so the text looks a bit like verse with ragged line ends. An
					example is the Harley Golden Gospels, below left.
				</p>

				<p>
					In text presentations of the same period in which the text fills
					out a rectangular written area, we sometimes see large spaces
					between sentences, even if there are no spaces between words, as in
					Vatican manuscript Pal. lat. 210, below right. Large spaces between
					sentences may may be an accommodation to the difficulty of tracking
					<i>scriptio continua</i> when it is written in a single column with
					long lines.
				</p>

				<p>
					In both layouts, <b><i>litterae notabiliores</i></b>, which may be
					colored or simply a larger version of the letters of the main text,
					also help punctuate the page.
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6  lesson-image">
				<p class="imageTitle">
					Layout <i>per cola et commata</i>
				</p>
				<div id="openseadragon5"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.8",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Harley 1775, folio 193 recto">
				</noscript>
				<small><em>&copy; The British Library Board, Harley
						1775, f. 193r.</em></small> <br />
			</div>

			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Layout in long lines with breaks between
					sentences</p>
				<div id="openseadragon6"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon6",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BAV-Pal.lat.210.f.004r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/BAV-Pal.lat.210.f.004r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from ">
				</noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Pal.
						lat. 210 f. 4r.</em></small> <br />
				<hr />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6">
				<p>
					Despite a preference for single-column layouts in codices of late
					antiquity, we do find double-column layouts. This was a practical
					choice especially for larger-format Bible manuscripts laid out <i>per
						cola et commata</i>, because a single column of short lines of text
					would be very profligate of parchment, even for a super-luxury
					manuscript. Two columns of text <i>per cola et commata</i> made it
					possible to fit longer biblical texts, or even whole Bibles, in a
					single codex. With a spacious Uncial script, this layout was a
					user-friendly solution in the era before regular word separation,
					as we can see in this Gospel manuscript from around the year 600.
				</p>
			</div>

			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">
					Double columns, <i>per cola et commata </i>layout
				</p>
				<div id="openseadragon7"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon7",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // default 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BodleianAuct.d.2.14/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/BodleianAuct.d.2.14/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from Oxford, Bodleian Library, MS Auct. D. 2. 14 folio 130r.">
				</noscript>
				<small><em>The Bodleian Libraries, The University of
						Oxford, Auct. D. 2. 14, f. 130r.</em></small> <br />
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>In the <a href="${pageContext.request.contextPath}/school/lesson/insular-paleography/overview">next unit</a>, on Insular manuscripts, we will see these
					scripts and layouts adapted for use in countries where Latin was
					not a native language.</p>

				<p>Biblical and patristic manuscripts in these plain-page
					layouts with Uncial and Half-Uncial script were carried to England
					and Ireland at the conversion of those countries to Christianity,
					where they were both imitated and transformed by adaptation to
					native artistic traditions.</p>

				<p>Repeatedly through later centuries, the unadorned
					single-column page with plenty of space around the text was
					associated with antiquity, because in most cases the oldest
					manuscripts later scribes knew were those of late antiquity, or
					books modeled directly on them. Layouts based directly or
					indirectly on this model were popular in times and places where
					scribes wanted to convey the authority of antiquity.</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<hr />
				<p>
					If you read Latin, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/classical-antiquity-transcription/transcription-lesson">Classical Antiquity
						Transcription</a></i> lesson to learn about abbreviations in Latin
					manuscripts and practice reading Uncial and Half-Uncial script. If you have already finished that transcription lesson, move on to the 
					<a href="${pageContext.request.contextPath}/school/lesson/christian-late-antiquity-transcription/intro"><i>Christian Late Antiquity Transcription</i> exercises</a>.
					Otherwise, go directly to the <i><a href="${pageContext.request.contextPath}/school/lesson/insular-paleography/overview">Insular Paleography</a></i> lesson to
					learn about the scripts of the British Isles in the early Middle
					Ages.
				</p>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>