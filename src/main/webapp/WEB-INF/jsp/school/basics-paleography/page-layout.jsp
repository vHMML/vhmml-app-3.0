<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 7: Page Layout, Pricking and Ruling" />
	<tiles:putAttribute name="previousSection" value="parchment-codex" />
	<tiles:putAttribute name="nextSection" value="exercises-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">RULING AND PRICKING</h4>
				<p>To guide their work, medieval scribes made lines on the
					parchment on which they were going to write: horizontal lines to guide the
					lines of writing and vertical lines to define the outside edge of
					the written area. Sometimes vertical lines were added to provide a space for marginal
					annotations or decorative elements.</p>
				<p>
					These lines are called <b>ruling</b>. In order to rule the page,
					scribes would use a knife to make <b>prickings</b> &#8212; little
					holes &#8212; in the far outer margins of the page, and then line
					up a straight edge from pricking to pricking in order to make
					straight lines.
				</p>
				<p>In late antiquity and the early Middle Ages, ruling was
					generally done in <b>dry point</b>: the scribe would use a sharp stylus to
					incise furrows in the thickness of the parchment to guide the
					writing. The resulting dry-point ruling was visible to the scribe
					working close to the page, but did not stand out to the reader, so
					the ruling pattern did not interfere with the look of the script on
					the page.</p>
				<%-- <hr />--%>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-6">
				<p>
					The 11th-century Gospel manuscript seen here (Walters W.7) has <b>dry-point
						ruling</b>. The ruling is invisible when you look at the page as a
					whole, so the written area and the illuminated initial stand out
					against a large, plain background. This is typical of book
					aesthetics in this period.
				</p>
				<p>If you zoom in and explore the image in detail, you can see
					the dry-point ruling, especially along the top of the page, above
					the gold letters in the top line.</p>
				
			</div>
			
				<div class="col-md-6 col-lg-6 lesson-image">
					<div id="openseadragon1"
						style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon1",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "1", // normally defaults to 0
							minZoomLevel : "0.8",
							maxZoomLevel : "10",
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output.xml"
						});
					</script>
					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript page showing dry point ruling">
					</noscript>
					<small><em>Walters Art Museum, W.7, f. 10r. &copy;
							2011 Walters Art Museum, used under a <a
							href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
							target="_blank">CC BY-SA license</a>.
					</em></small>
				</div>	
			</div>
				<%-- <hr />--%>
				<div class="row">
					<div class="col-md-6 col-lg-6">
						<p>
							From the 12th century on, ruling with <b>plummet</b>, or lead,
							became common. In the next manuscript (K&ouml;ln Cod. 139) you can
							zoom in and see both horizontal and vertical ruling.
						</p>
						<p>
							You can also clearly see the <b>prickings</b> that were made to
							guide the ruling of the lines. Look along the outer margin of the
							page and at the top of the two vertical rules, right at the top
							edge of the page.
						</p>
						<p>The fact that you can so clearly see the prickings here,
							and that they are well inset from the right edge of the page, is
							a good sign that the manuscript has not been trimmed in rebinding, and therefore that we are looking at the original
							proportions of the page, or something close to them. Many
							medieval manuscripts have been rebound several times over the
							centuries, usually with some loss of the original edges of the
							page.</p>
						<!--MS image Cologne 139 -->
					</div>
					<div class="col-md-6 col-lg-6 lesson-image">
							<div id="openseadragon2"
								style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
							<script type="text/javascript">
								var viewer = OpenSeadragon({
									id : "openseadragon2",
									prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
									defaultZoomLevel : "1",
									minZoomLevel : "0.9",
									maxZoomLevel : "8",
									zoomPerClick: "1.4", showRotationControl : "true",
									tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/koln139/GeneratedImages/dzc_output.xml"
								});
							</script>
							<noscript>
								JavaScript needs to be enabled in order to utilize the zoom
								viewer. A static image of the manuscript may be seen: <img
									src="${pageContext.request.contextPath}/static/js/openseadragon/images/koln139/GeneratedImages/dzc_output_files/9/0_0.jpg"
									alt="manuscript page from Köln, 139">
							</noscript>
							<small><em>K&ouml;ln, Erzbisch&ouml;fliche
									Di&ouml;zesan- und Dombibliothek, Cod. 139, f. 21r. 
							</em></small>
						</div>
					</div>
				<%--<hr />--%>
				<div class="row">
					<div class="col-md-6 col-lg-6">
						<p>In the later Middle Ages, ruling with ink became normal.
							Sometimes the ink is very dark and is clearly visible as part of
							the design of the page. In this 15th-century manuscript, the
							ruling is done in light brown ink, but you can still see how it
							helps create a page design with strong, rectangular forms. If you
							zoom in and explore, you can see that the ruling is more complex
							than in the earlier manuscripts. It outlines the spaces not only
							for the text, but for the marginal decoration as well.</p>
					</div>
					<div class="col-md-6 col-lg-6 lesson-image">
						<div id="openseadragon3"
							style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							var viewer = OpenSeadragon({
								id : "openseadragon3",
								prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel : "1", // normally defaults to 0
								minZoomLevel : "0.8",
								maxZoomLevel : "10",
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/genevafr0001-2-1r/GeneratedImages/dzc_output.xml"
							});
						</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/genevafr0001-2-1r/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from Geneva, MS fr. 1/2">
						</noscript>
						<small><em>Geneva, Biblioth&egrave;que de
								Gen&egrave;ve, MS fr. 1/2, f. 1r. <br />
							<a href="http://www.e-codices.unifr.ch" target="_blank">(www.e-codices.unifr.ch)</a>
						</em></small>
						<hr />
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
					<h4 class="lessonSubheading">RULING AND PRICKING</h4>
					<p>When you are comfortable with the terms and concepts
						discussed in the last three lesson sections, click to the next
						section to try a quick quiz on terms for parts of the codex and on
						ruling methods.</p>

					<p>&nbsp;</p>

				</div>
			</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
