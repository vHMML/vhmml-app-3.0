<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName" value="Section 4: Diyarbakir, DIYR 62, f. 42r (dated 1535)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Menaion</i>"/>
	<tiles:putAttribute name="previousSection" value="mhay-1" />
	<tiles:putAttribute name="nextSection" value="diyr-83" />
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
						defaultZoomLevel : "0.6",
						minZoomLevel : "0.4",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr62_42r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr62_42r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from DIYR 00062">
				</noscript>
				<small><em>Diyarbakir, Meryem Ana Syriac Orthodox
						Church, DIYR 62, f. 42r. All rights reserved. Image provided by
						HMML.</em></small>
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
										<li class="letterDescription">like Serto</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td><ul>
										<li class="letterDescription">as in Estrangela</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">like East Syriac shape,
											i.e., the letter has a baseline</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td><ul>
										<li class="letterDescription">of the Serto shape</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">completely round, as in
											Serto</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td><ul>
										<li class="letterDescription">in final form, like the
											East Syriac shape &#40;similar to Estrangela, but with the
											top left segment curving back to the right&#41;, and with the
											descender pointing leftward</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">of the angled, square
											shape, as in Estrangela, usually closed</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>qop</i></td>
								<td><ul>
										<li class="letterDescription">angled, not round</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">a shape also known in East
											Syriac: a form similar to Estrangela, but with a thick line
											instead of an open loop on the left</li>
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
									<li class="letterDescription">like Serto</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">as in Estrangela</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">like East Syriac shape,
										i.e., the letter has a baseline</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td><ul>
									<li class="letterDescription">of the Serto shape</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>w&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">completely round, as in
										Serto</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">in final form, like the East
										Syriac shape &#40;similar to Estrangela, but with the top left
										segment curving back to the right&#41;, and with the descender
										pointing leftward</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">of the angled, square shape,
										as in Estrangela, usually closed</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>qop</i></td>
							<td><ul>
									<li class="letterDescription">angled, not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">a shape also known in East
										Syriac: a form similar to Estrangela, but with a thick line
										instead of an open loop on the left</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>