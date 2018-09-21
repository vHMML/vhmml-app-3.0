<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Christian Late Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Introduction and Historical Overview" />
	<tiles:putAttribute name="sectionDescription" value="INTRODUCTION" />
	<tiles:putAttribute name="nextSection" expression="uncial" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">

				<p>In this lesson, we look at the two dominant book scripts of
					late antiquity, concentrating on the period from about the 4th
					century, when Christianity became the official religion of the
					Roman Empire, to the 8th century, when the Roman Empire had fallen
					in the West. At that time, the successor communities and kingdoms
					within its former territory and on the edges of the old Empire were
					beginning to establish their own, localized book cultures.</p>
				<p>
					These scripts are <strong>Uncial</strong> and <strong>Half-Uncial</strong>.
				</p>
				<p>Uncial and Half-Uncial were of enormous importance in the
					later development of Latin script, because it was in these scripts
					that the post-Roman world and its neighbors received Christian
					texts: the Bible, liturgical texts, and the works of the Fathers of
					the Church.</p>
				<p>Click the images below to explore these two scripts before we
					discuss them in detail.</p>

			</div>
		</div>


		<div class="row">
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Uncial</p>
				<div id="openseadragon1"
					style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "8",						
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript from The British Library ">
				</noscript>
				<small><em>&copy; The British Library Board, Harley
						1775, f. 193r.</em> </small>
			</div>
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Half-Uncial</p>
				<div id="openseadragon2"
					style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.8",
						maxZoomLevel : "9",						
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395-p25/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395-p25/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Manuscript image from St. Gallen 1395">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1395, p. 25. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a> )
				</em></small>
			</div>
		</div>
		<hr />

		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">HISTORICAL OVERVIEW</h4>
				<p>
					<strong>UNCIAL</strong> is a <strong>majuscule</strong> script used
					as the main text script of very high-grade books between the <strong>5th
						and 8th centuries</strong>, and also as a <strong>display script</strong>
					throughout the Middle Ages thereafter. (A display script is used
					for titles, chapter headings, and the like, to distinguish them
					from the main text script of the manuscript.)
				</p>

				<p>
					<strong>Uncial</strong> is characterized by a <strong>generous,
						rounded aspect</strong>. Uncial is characteristically used in late
					antiquity and the early Middle Ages for manuscripts of the Bible.
					You can think of Uncial as being to Christian books what Square and
					Rustic Capitals were to manuscripts of Vergil in the same period: a
					special script for very special texts. However, there are over 500
					surviving Uncial manuscripts, whereas only a handful of manuscripts
					in ancient capitals survive.
				</p>

				<p>
					<strong>HALF-UNCIAL</strong> is a <strong>minuscule</strong> script
					used in books of all kinds from the <strong>2nd to the 5th
						centuries</strong>. Half-Uncial emerged from Roman documentary cursive
					scripts in areas where Roman administrators worked and was thus
					the <strong>common book script of the post-Roman world</strong>. It
					is the immediate ancestor of the scripts of the early Middle Ages
					(Insular minuscule, Caroline minuscule) and is recognizably the
					ancestor of our modern lower-case alphabet.
				</p>

				<p>Despite its widespread use and unparalleled influence,
					significantly fewer Half-Uncial manuscripts survive than Uncial
					ones. This is in part because books in Half-Uncial were, on
					average, less precious and more intensively used than the
					ultra-high-grade books written entirely in Uncials.</p>

				<hr />

				<p>
					Take a closer look at manuscripts in the two scripts. Explore the
					two images and note similarities and differences. Pay attention to
					what makes Half-Uncial <strong>minuscule</strong> and Uncial <strong>majuscule</strong>.
					Are there letters in the Half-Uncial manuscript that you recognize
					from our modern lower-case alphabet? What do you see that looks
					unfamiliar?
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p class="imageTitle">Half-Uncial, Italy, early 5th century</p>
				<div id="openseadragon3"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.4",
						maxZoomLevel : "9",						
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395-p25/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang1395-p25/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from St. Gallen, Stiftsbibliothek, MS 1395">
				</noscript>

				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1395, p. 25. (<a href="http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>
						)
				</em></small>

			</div>
		</div>

		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p class="imageTitle">Uncial, Italy, late 6th century</p>
				<div id="openseadragon4"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1.5",
						minZoomLevel : "0.4",
						maxZoomLevel : "8",
						minPixelRatio: "1",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt=" manuscript page from the British Library written in Uncial script">
				</noscript>

				<small><em>&copy; The British Library Board, Harley 1775, f. 193r.</em></small> <br />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">

				<p>
					<strong>A note on nomenclature:</strong> Despite what their names
					would suggest, Half-Uncial is not a cut-down or small-scale version
					of Uncial. In fact, Half-Uncial emerges a bit earlier than Uncial.
					Both names were applied in the 17th century by early paleographers,
					on somewhat doubtful grounds.
				</p>

				<p>
					The term "Uncial" was first used as a modern term for a particular
					ancient script by Jean Mabillon in his <em>De re diplomatica</em>
					(1681). Mabillon took the term from Jerome's preface to his
					translation of Job, where Jerome says, "Let those who want them
					have ancient books written in gold or silver on purple parchment or
					burdened, rather than written, with <em>uncialibus</em>..." The
					meaning of <em>uncialibus</em> is uncertain, but the best guess is
					something like "letters an inch high." Mabillon associated the
					large letters of luxury ancient Christian books with Jerome's
					remarks, even though the script we now call Uncial postdates
					Jerome's lifetime.
				</p>

				<p>
					"Half-Uncial," meanwhile, is a term invented by René-Prosper Tassin
					and Charles-François Toustain in their <em>Nouveau traité de
						diplomatique</em> (1750-65). They thought Half-Uncial looked like a
					cut-down version of Uncial and named it accordingly. Paleographers
					today know that Half-Uncial did not develop from Uncial. It emerged
					earlier than Uncial and is an independent development of Later
					Roman Cursive.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
