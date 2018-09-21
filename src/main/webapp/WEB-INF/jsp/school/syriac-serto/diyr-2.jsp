<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 11: Diyarbakir, DIYR 2, f. 64r (dated 1496)" />
	<tiles:putAttribute name="sectionDescription" value="Book of Judges" />
	<tiles:putAttribute name="previousSection" value="cfmm-420" />
	<tiles:putAttribute name="nextSection" value="cfmm-366" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 800px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.7", 
						minZoomLevel : "0.6",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr_00002_064r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr_00002_064r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from ">
				</noscript>
				<small><em>Diyarbakir, Meryem Ana Syriac Orthodox
						Church, DIYR 2, f. 64r. All rights reserved. Image provided by
						HMML.</em></small>
				<p>&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>This manuscript is especially notable for its large size (sixty-nine lines per page) and use of four columns, a rare <i>mise en page</i> for Syriac manuscripts.</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle">
				</span>

					<table class="table">
						<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>b&#275;t</i></td>
								<td>
									<ul>
										<li class="letterDescription">in final form has the
											bottom line curving upward, and similarly the final <i>yod</i>
											and <i>&#353;in</i>
										</li>
									</ul>
								</td>
							</tr>

							<tr>
								<td><i>g&#257;mal</i></td>
								<td><ul>
										<li class="letterDescription">very long</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>nun</i></td>
								<td>
									<ul>
										<li class="letterDescription">in unattached final form,
											its typical descender with the top reaching very high</li>
									</ul>
								</td>
							</tr>

							<tr>
								<td><i>l&#257;mad-&#257;lap</i></td>
								<td><ul>
									<li class="letterDescription">ligature across word
										boundary in col. d, 13 lines from the bottom</li>
									<li class="letterDescription">an example of a
										flourish at the top of the page is in col. c</li>
									<li class="letterDescription">a very long <i>l&#257;mad</i>
										crossing two <i>&#257;laps</i>, one across a word boundary
									</li>
									</ul></td>
							</tr>
						</tbody>
					</table>

				</span>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>b&#275;t</i></td>
							<td>
								<ul>
									<li class="letterDescription">in final form has the bottom
										line curving upward, and similarly the final <i>yod</i> and <i>&#353;in</i>
									</li>
								</ul>
							</td>
						</tr>

						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">very long</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>nun</i></td>
							<td>
								<ul>
									<li class="letterDescription">in unattached final form,
										its typical descender with the top reaching very high</li>
								</ul>
							</td>
						</tr>

						<tr>
							<td><i>l&#257;mad-&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">ligature across word
										boundary in col. d, 13 lines from the bottom</li>
									<li class="letterDescription">an example of a
										flourish at the top of the page is in col. c</li>
									<li class="letterDescription">a very long <i>l&#257;mad</i>
										crossing two <i>&#257;laps</i>, one across a word boundary
									</li>
								</ul></td>
						</tr>
					</tbody>
				</table>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>