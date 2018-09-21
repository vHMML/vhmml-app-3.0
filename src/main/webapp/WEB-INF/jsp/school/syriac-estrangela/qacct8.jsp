<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Earliest Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 5: Tell Kaif, QACCT 8 (7th C.?)" />
	<tiles:putAttribute name="sectionDescription"
		value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="bl-add14460f80r" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<%-- <p class="imageTitle">old, but undated</p>--%>
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.5", 
						minZoomLevel : "0.4",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/qacct00008/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/qacct00008/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page showing earliest Syriac estrangela example in a Gospel lectionary, from unknown date, perhaps the seventh century">
				</noscript>
				<small><em>Tell Kaif, Qalb Al-Aqdas Chaldean Church, QACCT 8, f. 20r. All rights reserved. Image provided by HMML.</em></small>
				<p>Many characteristics in Tell Kaif, QACCT 8 are shared with <i>DIYR 339</i> (see <a href="${pageContext.request.contextPath}/school/lesson/syriac-estrangela/diyr339">previous section 3</a>), but the lines in this manuscript are overall thicker than the other manuscript.</p>


				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
						<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>&#257;lap</i></td>
								<td><ul>
										<li class="letterDescription">does not sit below the line</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">in general top line not
											much thicker than the vertical</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td><ul>
										<li class="letterDescription">sharper descent on the
											right side</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>yod</i></td>
								<td><ul>
										<li class="letterDescription">when final <i>may</i> have
											a long extender on the right (at line-end, cf. f. 23va, l. 3)
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
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">does not sit below the line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">in general top line not much
										thicker than the vertical</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">sharper descent on the right
										side</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>yod</i></td>
							<td><ul>
									<li class="letterDescription">when final <i>may</i> have a
										long extender on the right (at line-end, cf. f. 23va, l. 3)
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