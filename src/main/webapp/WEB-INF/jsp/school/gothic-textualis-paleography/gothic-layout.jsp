<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 5: Page Layout in Gothic Manuscripts" />
	<tiles:putAttribute name="previousSection" value="textualis" />
	<tiles:putAttribute name="nextSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>The changes in the shape and proportions of letters that come
					with the development of Textualis &#8212; short ascenders,
					close-set lines, rows of evenly-spaced minims &#8212; lend a block
					of text written in that script a darker, denser appearance than is
					found in Carolingian manuscripts. The characteristic Gothic page
					layout is two long, narrow, dense columns whose boundaries are
					clearly set off from the surrounding space. You can see a trend in
					that direction in the 12th-century Protogothic manuscript at left,
					and it is fully developed in this mid-13th-century leaf from a
					small-format, portable Bible:</p>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-6  lesson-image">
				<p  class="imageTitle">12th century</p>
				<div id="openseadragon1"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Walters 18" />
				</noscript>
				<small><em>Walters Art Museum, W.18, f. 11v. &copy;
						2011 Walters Art Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
				<br />
		</div>
		<div class="col-lg-6  lesson-image">
			<p class="imageTitle">Mid-13th century</p>
			<div id="openseadragon2"
				style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
			<script type="text/javascript">
				var viewer = OpenSeadragon({
					id : "openseadragon2",
					prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
					defaultZoomLevel : "1",
					minZoomLevel : "0.8",
					maxZoomLevel : "8",
					zoomPerClick: "1.4", showRotationControl : "true",
					tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/manuscriptbiblepage/GeneratedImages/dzc_output.xml"
				});
			</script>
			<noscript>
				JavaScript needs to be enabled in order to utilize the zoom viewer.
				A static image of the manuscript may be seen: <img
					src="${pageContext.request.contextPath}/static/js/openseadragon/images/manuscriptbiblepage/GeneratedImages/dzc_output_files/9/0_0.jpg"
					alt="manuscript page from 13-century bible">
			</noscript>
			<small><em>HMML, Arca Artium (aap1306 verso).&nbsp;Used under a <a		href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.</em></small>
			<hr />
	</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>Zoom in and take a look at how the proportions of the letters
					in the 13th-century manuscript above contribute to the very
					dense appearance of the two columns.</p>
				<p>The two-column layout is, of course, not new in this period:
					we saw it in Bible manuscripts from late antiquity and the early
					Middle Ages, too. But the long, narrow proportions and density of
					the columns as blocks of text are an innovation of the Gothic
					period. Narrow columns make it somewhat easier for the eye to track
					through text that has little space between lines and is laterally
					compressed, as well as highly abbreviated.</p>
				<p>Smaller-format books often still retained a single-column
					layout with squarer proportions. This is typical for Books of
					Hours, luxury private devotional books of the end of the Middle
					Ages, which were designed to be held easily in the hand and were
					typically written in large, carefully-formed letters for lay
					readers. However, the presentation of the text as a densely-set,
					dark block, clearly bounded by marginal space or decoration, is in
					keeping with the Gothic aesthetic of the large-format Bibles above.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">Ruling becomes a frame</h4>
				<p>Early in the Gothic period, several changes in ruling
					technique alter the relationship between ruling lines and the text
					on the page.</p>
				<ul>
					<li>Ruling is done in ink, rather than dry-point or faint
						lead, so it becomes more visible. Indeed, there seems to be no
						effort to make it invisible, and it increasingly becomes part of
						the decoration of the page.</li>
					<li>The first line of text comes to be written below, rather
						than above, the top ruled line.</li>
					<li>The feet of letters start to float above the ruled line,
						rather to sit right on it.</li>
				</ul>
				<p>We can see all of these developments in this 15th-century Low
					German (?) manuscript:</p>
				<div id="openseadragon3"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.4",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/germanbookofhours/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/germanbookofhours/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="page from Book of Hours, possibly Low German?">
				</noscript>
				<small><em>HMML, Arca Artium (aap1301 verso). Used under a <a		href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-11">
				<p>The cumulative effect of these changes is that each line of
					text appears to be contained within a ruled box, while the text as
					a whole is also bounded by visible lines. Think about how different
					this is from early-medieval manuscripts in which the ruling was all
					but invisible. (If you zoom in, you can also pick out some of the
					letterforms we discussed in the last section.)</p>
				<hr />
				<h4 class="lessonSubheading">More complex layouts and ruling
					patterns</h4>
				<p>From the 12th century on, books studied in the new
					universities and copied by and for students were increasingly
					provided with standard glosses and commentaries. Elaborate layouts
					and ruling patterns developed to accommodate marginal and
					interlinear glosses as well as the main text. This page from a
					glossed copy of the Gospel of Luke from early 13th-century Paris
					illustrates these developments:</p>
					</div>
		</div>
		<div class="row">
			<div class="col-lg-11">
				<div id="openseadragon4"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.45", 
						minZoomLevel : "0.4",
						maxZoomLevel : "4",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/luke_3_33_76r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/luke_3_33_76r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Luke 3:33-34:6 ">
				</noscript>

				<small><em>HMML, MS Frag. 19, recto. Used under a <a href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.</em></small>
				</div>
		</div>
		<div class="row">
			<div class="col-lg-12">		
				<p>Red and blue pen flourishes, running titles, and numbers were
					used to help the reader find his way around these complex texts.
					Both the red-blue color scheme and the proliferation of
					&#8220;signposting&#8221; in books are typical of Gothic
					manuscripts. The somewhat earlier glossed manuscript we looked at
					early in this lesson also illustrates these developments in layout.
					If you zoom in, you can see that the page is ruled with
					double-height spaces for the main text and closer-set lines for the
					glosses:</p>
				<div id="openseadragon5"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel: "1",
						minZoomLevel : "0.38",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w30-6v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w30-6v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Walters 30">
				</noscript>
				<small><em>Walters Art Museum, W.30, f. 6v. &copy; 2011
						Walters Art Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
				<p>&nbsp;</p>
				<p>Could you identify a Gothic manuscript at a distance, just by
					the look of its page? Click ahead to the next exercise to give it a
					try.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>