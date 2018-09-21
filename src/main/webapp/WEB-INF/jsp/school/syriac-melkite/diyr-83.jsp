<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName"
		value="Section 5: Diyarbakir, DIYR 83, f. 35v (dated 1540)" />
		<tiles:putAttribute name="sectionDescription" value="<i>Pentecostarion</i>"/>
	<tiles:putAttribute name="previousSection" value="diyr-62" />
	<tiles:putAttribute name="nextSection" value="ccm-102" />
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
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr83_35v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr83_35v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from DIYR 00083">
				</noscript>
				<small><em>Diyarbakir, Meryem Ana Syriac Orthodox
						Church, DIYR 83, f. 35v. All rights reserved. Image provided by
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
										<li class="letterDescription">generally the line type,
											but at line-end the Estrangela type may occur</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">of the East Syriac type</li>
									</ul></td>
							</tr>
							<tr>
							<td><i>h&#275;-w&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">ligature seen in MHAY 1 is also present
					here, e.g. line 10 (<i>bis</i>) and the last line.</li>
								</ul></td>
						</tr>
							<tr>
								<td><i>zayn</i></td>
								<td><ul>
										<li class="letterDescription">hanging below the line</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">angular, not round</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>&#353;in</i></td>
								<td><ul>
										<li class="letterDescription">a pronounced triangular
											shape</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">of the closed-loop
											Estrangela type</li>
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
									<li class="letterDescription">generally the line type, but
										at line-end the Estrangela type may occur</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">of the East Syriac type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;-w&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">ligature seen in MHAY 1 is also present
					here, e.g. line 10 (<i>bis</i>) and the last line.</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>zayn</i></td>
							<td><ul>
									<li class="letterDescription">hanging below the line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">angular, not round</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#353;in</i></td>
							<td><ul>
									<li class="letterDescription">a pronounced triangular
										shape</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">of the closed-loop
										Estrangela type</li>
								</ul></td>
						</tr>
					</tbody>
				</table>

				<p>
					
				</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>