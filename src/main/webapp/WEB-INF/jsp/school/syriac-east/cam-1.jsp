<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 8: Mosul, CAM 1, f. 3v (dated 1598)" />
	<tiles:putAttribute name="sectionDescription" value="Burial Rite for Priests and Deacons" />
	<tiles:putAttribute name="previousSection" value="qaact-9" />
	<tiles:putAttribute name="nextSection" value="qaact-10" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cam1_3v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cam1_3v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CAM 1">
				</noscript>
				<small><em>Mosul, Chaldean Archdiocese, CAM 1, f. 3v.
						All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">in both kinds: the full
										Estrangela form (especially at line-end) and the more
										horizontal East Syriac kind</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">as in <a href="${pageContext.request.contextPath}/school/lesson/syriac-east/ccm-419"><i>CCM 419</i></a>, when joined
										to a previous letter, may have a round lower part</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">in final form of two kinds:
										that similar to the Estrangela type and one in which the pen
										is not lifted but rises slightly from the baseline and then
										descends and curves back to the right (both appear in f. 3v,
										line 3)</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">when final, has a more
										angular body</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">much more often of the
										triangular shape; the <i>t&#257;w-&#257;lap</i> ligature is
										present
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
									<li class="letterDescription">in both kinds: the full
										Estrangela form (especially at line-end) and the more
										horizontal East Syriac kind</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">as in <a href="${pageContext.request.contextPath}/school/lesson/syriac-east/ccm-419"><i>CCM 419</i></a>, when joined
										to a previous letter, may have a round lower part</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">in final form of two kinds:
										that similar to the Estrangela type and one in which the pen
										is not lifted but rises slightly from the baseline and then
										descends and curves back to the right (both appear in f. 3v,
										line 3)</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">when final, has a more
										angular body</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">much more often of the
										triangular shape; the <i>t&#257;w-&#257;lap</i> ligature is
										present
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