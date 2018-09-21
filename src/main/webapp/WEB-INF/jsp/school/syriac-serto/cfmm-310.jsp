<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Mardin, CFMM 310, p. 62 (8th C.)" />
	<tiles:putAttribute name="sectionDescription" value="Canons" />
	<tiles:putAttribute name="previousSection"
		value="serto-characteristics" />
	<tiles:putAttribute name="nextSection" value="cfmm-356" />
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
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm310_39r38v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm310_39r38v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page in Serto script from 8th Century">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM
						310, p. 62. All rights reserved. Image provided by HMML.</em></small>
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
								<td><i>b&#275;t</i></td>
								<td><ul>
										<li class="letterDescription">roughly rectangular, but
											sometimes relatively smooth at the corners</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">do not hang much below the
											line</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">completely round, and
											closed</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">only loosely angular
											&#40;but more so when final&#41;</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td><ul>
										<li class="letterDescription">taller left loop than right</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>&#7779;&#257;d&#275;</i></td>
								<td><ul>
										<li class="letterDescription">very little activity at the
											baseline, merely two small blips</li>									
										<li class="letterDescription">
											the descender is a wide,
											smooth curve down and to the left</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>qop</i></td>
								<td><ul>
										<li class="letterDescription">like <i>mim</i>, is only
											loosely angular
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
							<td><ul>
									<li class="letterDescription">roughly rectangular, but
										sometimes relatively smooth at the corners</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">do not hang much below the
										line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>w&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">completely round, and closed</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">only loosely angular
										&#40;but more so when final&#41;</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td><ul>
									<li class="letterDescription">taller left loop than right</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7779;&#257;d&#275;</i></td>
							<td><ul>
									<li class="letterDescription">very little activity at the
										baseline, merely two small blips</li>									
										<li class="letterDescription">the descender is a wide,
										smooth curve down and to the left</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>qop</i></td>
							<td><ul>
									<li class="letterDescription">like <i>mim</i>, is only
										loosely angular
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