<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Carolingian Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 5: Codicological Features of the Carolingian Page" />
	<tiles:putAttribute name="previousSection" value="exercise" />

	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					The influence of minim-height and line length:<br /> As we noted
					earlier in this lesson, the small minim-height of Caroline
					Minuscule, combined with the tendency to leave ample space between
					lines, contributes to the sense of spaciousness and unclutteredness
					of the page. Space between lines is a useful legibility feature in
					manuscripts written in long lines (i.e., in wide, single columns),
					since it helps to prevent the reader&#8217;s eye from skipping
					a line. As a general rule in the history of
					Western scripts, single-column layouts tend to go hand in hand with
					smaller minim heights and more space between lines. This is a
					feature to keep an eye on as Caroline Minuscule begins to evolve
					into Gothic Textualis in the 12th century.
				</p>

				<p>
					Ruling:<br /> From late antiquity through the Carolingian period,
					ruling was done in dry-point or hard-point &#8212; that is, with a
					stylus that made a furrow in the parchment, rather than with a
					pencil or pen that left colored marks on the page. As a result, the
					ruling pattern is not visible except on close inspection, so the
					ruling pattern does not interfere with the generally plain and open
					appearance of the page. Carolingian ruling can be very difficult to
					detect in even high-resolution digital images, unless the page has
					been photographed in raking light.
				</p>

				<p>If you look very closely at a Carolingian manuscript page and
					are able to see the ruling, you will see that the first line of
					writing on each page sits above the first ruled line. Zoom and
					scroll to the top of the page and you can just make out the way the
					writing sits atop the line incised in the parchment at the top of
					the left column in this 9th-century manuscript of the Bible from
					Tours:</p>

				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.5", 
						minZoomLevel : "0.35",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang75-p521/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang75-p521/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript from St. Gall, Stiftsbibliothek, MS 75, p. 521">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 75,
						p. 521. (<a href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
				<p>&nbsp;</p>


				<p>This is another feature to watch out for, as its
					disappearance is one of the signs of the end of Caroline Minuscule.</p>
				<p>This is a later Carolingian manuscript (11th C.) and its
					ruling pattern is more elaborate, but note that the dry-point
					ruling means that the ruling pattern does not interfere with the
					look of the page as a whole. If you zoom in, you can see the
					dry-point ruling clearly. If you zoom out, you can see that the
					luxury in this manuscript of the Gospels is expressed not only
					through judicious use of gold leaf and color, but through ample
					empty parchment.</p>

				<div id="openseadragon2"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel: "1", 
						minZoomLevel : "0.35",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript from Baltimore, Walters Art Museum, MS W.7 (the Reichenau Gospels), f. 10r.">
				</noscript>
				<small><em>Walters Art Museum, W.7, f. 10r, &copy; 2011
						Walters Art Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
				<p>&nbsp;</p>
				<p>In the <a href="${pageContext.request.contextPath}/school/lesson/gothic-textualis-paleography/historical-overview">next unit</a>, we will see how changing proportions in the
					script and changing aesthetics of the page gradually transform the
					look of manuscripts between the 11th and 13th centuries.</p>
				<div class="row">
					<div class="col-lg-12">
						<hr />
						<p>
							If you read Latin, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/caroline-min-transcription/more-abbreviations">Caroline Minuscule
								Transcription</a></i> lesson to practice transcribing Caroline
							Minuscule. Otherwise, go directly to the <i><a href="${pageContext.request.contextPath}/school/lesson/gothic-textualis-paleography/historical-overview">Gothic Textualis
								Paleography</a></i> lesson.
						</p>
					</div>
				</div>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>