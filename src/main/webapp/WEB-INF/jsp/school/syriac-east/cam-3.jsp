<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 12: Mosul, CAM 3, f. 2r (dated 1685)" />
	    <tiles:putAttribute name="sectionDescription" value="<i>Gazz&#257;</i>" />
	<tiles:putAttribute name="previousSection" value="ccm-71" />
	<tiles:putAttribute name="nextSection" value="ccm-23" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cam3_2r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cam3_2r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CAM 3">
				</noscript>
				<small><em>Mosul, Chaldean Archdiocese, CAM 3, f. 2r.
						All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>This manuscript exemplifies the thick, angular script that is
					similar to common East Syriac typefaces, such as those in Paul
					Bedjan&#8217;s numerous text editions.</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
					<table class="table">
						<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>&#257;lap</i></td>
								<td><ul>
										<li class="letterDescription">usually of the vertical
											line type, but sometimes closer to the Estrangela type</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td><ul>
										<li class="letterDescription">both kinds of final form
											<a href="${pageContext.request.contextPath}/school/lesson/syriac-east/cam-1"><i>CAM 1</i></a></li>
										<li class="letterDescription">the word <i>&#x02be;yk</i>,
											for example, is written with one kind at lines 3 and 12, and
											with the other four lines from the bottom on the same folio
										</li>
										<li class="letterDescription">the word <i>lk</i> is
											written with both kinds at line 18
										</li>
									</ul></td>
							</tr>

							<tr>
								<td><i>p&#275;</i></td>
								<td><ul>
										<li class="letterDescription">rather tall</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">of the triangular type</li>
										<li class="letterDescription">the <i>t&#257;w-&#257;lap</i>
											ligature is present
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
									<li class="letterDescription">usually of the vertical line
										type, but sometimes closer to the Estrangela type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">both kinds of final form
										(cf. <a href="${pageContext.request.contextPath}/school/lesson/syriac-east/cam-1"><i>CAM 1</i></a>)</li>
									<li class="letterDescription">the word <i>&#x02be;yk</i>,
										for example, is written with one kind at lines 3 and 12, and
										with the other four lines from the bottom on the same folio
									</li>
									<li class="letterDescription">the word <i>lk</i> is
										written with both kinds at line 18
									</li>
								</ul></td>
						</tr>

						<tr>
							<td><i>p&#275;</i></td>
							<td><ul>
									<li class="letterDescription">rather tall</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">of the triangular type</li>
									<li class="letterDescription">the <i>t&#257;w-&#257;lap</i>
										ligature is present
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