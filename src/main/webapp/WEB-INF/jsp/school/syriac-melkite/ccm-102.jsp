<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName" value="Section 6: Mardin, CCM 102, f. 1v (dated 1583)" />
	<tiles:putAttribute name="sectionDescription" value="Hymns for Passion and Easter Week" />
	<tiles:putAttribute name="previousSection" value="diyr-83" />
	<tiles:putAttribute name="nextSection" value="diyr-63" />
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
						defaultZoomLevel : "0.5",
						minZoomLevel : "0.4",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm102_1v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm102_1v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CCM 00102">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 102, f. 1v.
						All rights reserved. Image provided by HMML.</em></small>
				<p>&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">

				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
					<table class="table">
						<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>&#257;lap</i></td>
								<td><ul>
										<li class="letterDescription">of the line type, but
											curvy, as in MHAY 1</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">often of the East Syriac
											type</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">boxy</li>
										<li class="letterDescription">not quite closed when final</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">when of the closed-loop
											Estrangela type, may have a small loop at the top</li>
									</ul></td>
							</tr>
						</tbody>
					</table></span>
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
									<li class="letterDescription">of the line type, but curvy,
										as in MHAY 1</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">often of the East Syriac
										type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">boxy</li>
									<li class="letterDescription">not quite closed when final</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">when of the closed-loop
										Estrangela type, may have a small loop at the top</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>