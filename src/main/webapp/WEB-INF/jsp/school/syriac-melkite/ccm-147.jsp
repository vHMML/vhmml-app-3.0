<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName" value="Section 2: Mardin, CCM 147, f. 2r (14th/15th C.)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Menaion</i> for September" />
	<tiles:putAttribute name="previousSection" value="melkite-examples" />
	<tiles:putAttribute name="nextSection" value="mhay-1" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm147_2r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm147_2r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CCM 147">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 147, f. 2r.
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
										<li class="letterDescription">a vertical line, often with
											the top angling back to the right</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td><ul>
										<li class="letterDescription">as in East Syriac, i.e., an
											angled line reaching below the baseline</li>
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
										<li class="letterDescription">the East Syriac/Serto shape</li>
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
										<li class="letterDescription">the round shape of East
											Syriac and Serto</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>qop</i></td>
								<td><ul>
										<li class="letterDescription">angular, not round</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">the Estrangela type with a
											thick line instead of a more open loop on the bottom left, as
											well as the triangular shape; the former occurs when not
											joined to the previous letter, both can occur when joined to
											the previous letter</li>
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
									<li class="letterDescription">a vertical line, often with
										the top angling back to the right</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">as in East Syriac, i.e., an
										angled line reaching below the baseline</li>
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
									<li class="letterDescription">the East Syriac/Serto shape</li>
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
									<li class="letterDescription">the round shape of East
										Syriac and Serto</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>qop</i></td>
							<td><ul>
									<li class="letterDescription">angular, not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">the Estrangela type with a
										thick line instead of a more open loop on the bottom left, as
										well as the triangular shape; the former occurs when not
										joined to the previous letter, both can occur when joined to
										the previous letter</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>