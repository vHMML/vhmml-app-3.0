<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 7: Diyarbakir, DIYR 338, f. 24v (11th/12th C.)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Fenqitho</i>" />
	<tiles:putAttribute name="previousSection" value="cfmm-41" />
	<tiles:putAttribute name="nextSection" value="ccm-72" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 900px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.9",
						minZoomLevel : "0.7",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr338_24v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr338_24v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from DIYR 338">
				</noscript>
				<small><em>Diyarbakir, Meryem Ana Syriac Orthodox
						Church, DIYR 338, f. 24v. All rights reserved. Image provided by
						HMML.</em></small>
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
								<td>
									<ul>
										<li class="letterDescription">serif on right leg</li>
										<li class="letterDescription">sits below line</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>d&#257;lat</i> / <i>r&#275;&#353;</i></td>
								<td>
									<ul>
										<li class="letterDescription">Serto shape</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td>
									<ul>
										<li class="letterDescription">lowest part ends in a dot</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td>
									<ul>
										<li class="letterDescription">Serto shape</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td>
									<ul>
										<li class="letterDescription">Serto shape</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#7717;&#275;t</i></td>
								<td>
									<ul>
										<li class="letterDescription">taller than yod</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td>
									<ul>
										<li class="letterDescription">relatively round on top,
											but with more of an angle than some others</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td>
									<ul>
										<li class="letterDescription">closed loop</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td>
									<ul>
										<li class="letterDescription">angled &#952; type</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i> &#x02BF;&#275;</i></td>
								<td>
									<ul>
										<li class="letterDescription">initial form has a serif</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#353;in</i></td>
								<td>
									<ul>
										<li class="letterDescription">top line curved at both
											ends</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td>
									<ul>
										<li class="letterDescription">loop closed</li>
									</ul>
								</td>
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
							<td>
								<ul>
									<li class="letterDescription">serif on right leg</li>
									<li class="letterDescription">sits below line</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>d&#257;lat</i> / <i>r&#275;&#353;</i></td>
							<td>
								<ul>
									<li class="letterDescription">Serto shape</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td>
								<ul>
									<li class="letterDescription">lowest part ends in a dot</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td>
								<ul>
									<li class="letterDescription">Serto shape</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>w&#257;w</i></td>
							<td>
								<ul>
									<li class="letterDescription">Serto shape</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>&#7717;&#275;t</i></td>
							<td>
								<ul>
									<li class="letterDescription">taller than yod</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td>
								<ul>
									<li class="letterDescription">relatively round on top, but
										with more of an angle than some others</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td>
								<ul>
									<li class="letterDescription">closed loop</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td>
								<ul>
									<li class="letterDescription">angled &#952; type</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i> &#x02BF;&#275;</i></td>
							<td>
								<ul>
									<li class="letterDescription">initial form has a serif</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>&#353;in</i></td>
							<td>
								<ul>
									<li class="letterDescription">top line curved at both ends</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td>
								<ul>
									<li class="letterDescription">loop closed</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>