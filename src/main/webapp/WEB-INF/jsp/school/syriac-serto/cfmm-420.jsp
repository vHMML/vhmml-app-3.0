<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 10: Mardin, CFMM 420, p. 6 (dated 1474)" />
	<tiles:putAttribute name="sectionDescription"
		value="Monastic Anthology" />
	<tiles:putAttribute name="previousSection" value="smmj-38" />
	<tiles:putAttribute name="nextSection" value="diyr-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 700px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.6",
						minZoomLevel : "0.5",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm420_3v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm420_3v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page showing Serto script from Mardin, Turkey">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM
						420, p. 6. All rights reserved. Image provided by HMML. </em></small>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					 This manuscript contains an elegant Serto script with decorations extending into the margins.
					 Note the <i>l&#257;mad-&#7789;&#275;t</i> ligature across a
					word boundary in line 5.
				</p>

				<%-- <button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span> --%>
				<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>b&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">in final form, the bottom
										line curving upward</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>l&#257;mad</i></td>
							<td>
								<ul>
									<li class="letterDescription">very tall, reaching higher
										than <i>&#7789;&#275;t</i> and <i>t&#257;w</i>
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>nun</i></td>
							<td><ul>
									<li class="letterDescription">in final form very thin</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<%--</span>--%>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>