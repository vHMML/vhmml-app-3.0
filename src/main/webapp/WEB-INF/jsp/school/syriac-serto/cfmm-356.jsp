<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 3: Mardin, CFMM 356, pp. 166-167 (9th/10th C.)" />
	<tiles:putAttribute name="sectionDescription" value="John of Dara" />
	<tiles:putAttribute name="previousSection" value="cfmm-310" />
	<tiles:putAttribute name="nextSection" value="cfmm-130" />
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
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm356_84r_83v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm356_84r_83v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from Mardin in Serto script">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM
						356, pp. 166-167. All rights reserved. Image provided by HMML. </em></small>
				<p>&nbsp;</p>
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
									<li class="letterDescription">appears as both the line
										type, as usual in Serto, and the Estrangela type &#40;esp. at
										line end, but even there the line type may be found&#41;</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>b&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">angled, as in Estrangela,
										not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">angled, as in Estrangela,
										not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">the typical Serto shapes</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">sometimes with a round lower
										part, sometimes sharper, but with rounded corners</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">final form with the
										descender angling to the right</li>
								</ul></td>
						</tr>
						
						<tr>
							<td><i>l&#257;mad</i></td>
							<td><ul>
									<li class="letterDescription">final form with the second
										leg thinner and shorter than the first</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">is sometimes perfectly
										round, other times not quite round, but not especially sharp
										either</li>
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
									<li class="letterDescription">appears as both the line
										type, as usual in Serto, and the Estrangela type &#40;esp. at
										line end, but even there the line type may be found&#41;</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>b&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">angled, as in Estrangela,
										not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">angled, as in Estrangela,
										not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">the typical Serto shapes</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">sometimes with a round lower
										part, sometimes sharper, but with rounded corners</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">final form with the
										descender angling to the right</li>
								</ul></td>
						</tr>
						
						<tr>
							<td><i>l&#257;mad</i></td>
							<td><ul>
									<li class="letterDescription">final form with the second
										leg thinner and shorter than the first</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">is sometimes perfectly
										round, other times not quite round, but not especially sharp
										either</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
						<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>