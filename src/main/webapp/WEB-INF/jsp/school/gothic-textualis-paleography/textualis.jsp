<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 4: Fully-formed Textualis" />
	<tiles:putAttribute name="previousSection" value="exercise-1" />
	<tiles:putAttribute name="nextSection" value="gothic-layout" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					By the 13th century, a script emerged that incorporated all of the
					above features with a much more marked emphasis on angularity, with
					upright strokes and diagonal linking lines as the building-blocks
					of letters. This is Textualis, the book script <em>par
						excellence</em> of the later Middle Ages and the model for the earliest
					European printing types.
				</p>

				<p>
					Textualis proper has the lateral compression of Protogothic, but
					even more marked, because nearly all the strokes that make up the
					letters are thick vertical strokes. Even notionally
					&#8220;curved&#8221; letters, like <b>c</b> and <b>o</b>, come to
					be composed of straight and diagonal strokes, with marked contrast
					between thick and thin. Ends of letters are finished with angular
					hairlines, sharp forks, or lozenge-shaped finials. The
					proportionately large minim height and small ascender/descender
					length become even more marked. Space between lines gets smaller.
					The result is a highly-compressed, angular script that appears
					dense on the page.
				</p>
				<p>This 14th-century manuscript in a highly calligraphic form of
					Textualis (by a woman scribe!) shows clearly the salient
					characteristics of the script: verticality and angularity, with the
					vertical strokes that make up the letters forming a regular rhythm
					along the line of writing:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-11">
				<p class="imageTitle">Germany (Cologne, Convent of the Poor
					Clares), before 1357 CE</p>
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.6", 
						minZoomLevel : "0.5",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang149-50r/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang149-50r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Cologne 149">
				</noscript>
				<small><em>K&ouml;ln, Erzbisch&ouml;fliche
						Di&ouml;zesan- und Dombibliothek, MS 149, f. 50r.</em></small>
			</div>

		</div>
		<div class="row">
			<div class="col-lg-11">
				<p>In it, you can see the fully-developed results of the changes
					in letterforms we saw in Protogothic:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-1">

				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/cologne149-1.jpg"
					alt="snippet of manuscript showing Gothic OR">

			</div>
			<div class="col-lg-11">

				<p>
					This is <b>or</b>. The 2-shaped form of <b>r</b> after <b>o</b> has
					become standard. (Look at the second line from the top and the
					second and third lines from the bottom in the left-hand column.)
				</p>
			</div>
		</div>
		<div class="row">


					<div class="col-lg-2">
						<img
							src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/cologne149-2.jpg"
							alt="snippet of manuscript showing Gothic characters: i-h-u">
					</div>
					<div class="col-lg-10">
						<p>
							This is <b>ihu</b>, an abbreviation for <i>iesu</i>. The
							right-hand stroke of <b>h</b> curves around and descends below
							the baseline.
						</p>
					</div>
				</div>
				<p>&nbsp;</p>

				<div class="row">
					<div class="col-lg-2">
						<img
							src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/cologne149-3.jpg"
							alt="snippet of manuscript showing Gothic characters: a-p-l-i-s">
					</div>
					<div class="col-lg-10">
						<p>
							These letters are <b>aplis</b>, an abbrevation for <i>apostolis</i>.
							The <b>a</b> shows another development of later-medieval
							Textualis: the upper stroke has become closed, so that the letter
							has, in effect, two &#8220;stories.&#8221; The <b>p</b> in the
							word here and the <b>q</b> in the following detail show how
							short descenders have become.
						</p>
					</div>
				</div>
				<p>&nbsp;</p>
				<div class="row">
					<div class="col-lg-2">
						<img
							src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/cologne149-4.jpg"
							alt="snippet of manuscript showing Gothic dei et domi">
					</div>
					<div class="col-lg-10">
						<p>
							This <b>quo</b> shows how notionally &#8220;round&#8221; letters
							come to be made up of straight strokes...
						</p>
					</div>
				</div>
				<p>&nbsp;</p>
				<div class="row">
					<div class="col-lg-4">
						<img
							src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/cologne149-5.jpg"
							alt="snippet of Gothic manuscript showing Latin dei et domi">
					</div>
					<div class="col-lg-8">
						<p>
							... as does this detail, which reads <b>dei et domi-</b>
						</p>
					</div>
					<p>&nbsp;</p>
				</div>

			<div class="row">
				<div class="col-lg-11">
					<p>
						In the <b>dei et domi-</b> detail above, you can see another
						defining feature of Textualis, the so-called &#8220;biting&#8221;
						(or &#8220;fusion&#8221;) of opposing bows. Whenever the bows
						of two &#8220;rounded&#8221; letters face each other, those
						letters are written so that the bows overlap. In effect, since
						bows in Textualis are constructed of straight lines, this means
						that the two letters share one vertical stroke where they overlap.
						You can see the &#8220;biting&#8221; of <b>de</b> and of <b>do</b>
						in the words above. (Note that this is only possible once <b>d</b>
						has assumed its &#8220;Uncial&#8221; form, with the stem leaning
						over to the left and with a curve &#8212; or, in Textualis, a
						notional curve &#8212; on the right where it faces the next
						letter.)
					</p>

					<p>
						The <b>dei et domi-</b> detail above is also a good place to see
						how the consistent treatment of the feet of minims contributes to
						the rhythm of the script.
					</p>

					<p>In more rapidly-written forms of Textualis, fewer strokes
						are used, and strokes that are genuinely curved may appear, but
						the same sense persists that the script has a rhythm of
						evenly-spaced, heavy, parallel upright strokes. This
						late-13th-century breviary gives a good sense of the typical page
						of Gothic Textualis. Can you spot any of the individual
						letterforms mentioned above in this manuscript? Can you find an
						instance of biting of opposing bows?</p>
						</div>
						</div>
					<div class="row">
						<div class="col-lg-11">
							<p class="imageTitle">Northeast France, ca. 1290-1310</p>
							<div id="openseadragon2"
								style="width: 900px; height: 700px; background-color: #666; border-radius: 1%;"></div>
							<script type="text/javascript">
								var viewer = OpenSeadragon({
									id : "openseadragon2",
									prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
									defaultZoomLevel : "0.6",
									minZoomLevel : "0.5",
									maxZoomLevel : "6",
									zoomPerClick: "1.4", showRotationControl : "true",
									tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary_0007r/GeneratedImages/dzc_output.xml"
								});
							</script>
							<noscript>
								JavaScript needs to be enabled in order to utilize the zoom
								viewer. A static image of the manuscript may be seen: <img
									src="${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary_0007r/GeneratedImages/dzc_output_files/9/0_0.jpg"
									alt="static image of manuscript from Hill Museum & Manuscript Library, MS 2, folio 7, recto">
							</noscript>
							<small><em>HMML, Bethune Breviary, MS 2, f. 7r. Used under a <a
									href="https://creativecommons.org/licenses/by-nc/4.0/"
									target="_blank">CC BY-NC 4.0 license</a>.
							</em></small>

							<p>&nbsp;</p>
							<p>Compare this manuscript to the Protogothic examples from
								the previous century earlier in this lesson, and to the
								Carolingian manuscripts in the <a href="${pageContext.request.contextPath}/school/lesson/carolingian-paleography/historical-orientation">last unit</a>. See if you can
								identify the relationship between the forms of individual
								letters and the look of the script as a whole.</p>

							<p>&nbsp;</p>
						</div>
					</div>
	</tiles:putAttribute>
</tiles:insertTemplate>