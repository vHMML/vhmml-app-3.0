<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 13: Mardin, CCM 23, f. 27r (dated 1796)" />
	<tiles:putAttribute name="sectionDescription" value="Eliya of Nisibis, <i>Syriac Grammar</i>" />
	<tiles:putAttribute name="previousSection" value="cam-3" />
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
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm23_27r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm23_27r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from southeastern Turkey">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 23, f. 27r.
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
										<li class="letterDescription">in both forms, the
											Estrangela type with a conspicuous curve at the top</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td><ul>
										<li class="letterDescription">the line connecting the
											circle and the vertical on the right lower than the top of
											that vertical, i.e. there is a small tip above the right
											angle</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td><ul>
										<li class="letterDescription">sitting flat or almost flat
											on the baseline, i.e. it is not really a left-leaning &#952;</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">usually of the triangular
											type</li>
									</ul></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><ul>
										<li class="letterDescription">there is a <i>t&#257;w-&#257;lap</i>
											ligature, but it is like the mashed together kind in
											Estrangela, not the typical East Syriac type (see examples on
											lines 4, 3, and 2 from the bottom, but contrast two places in
											line 6 from the bottom, where the triangular <i>t&#257;w</i>
											is followed by the Estrangela <i>&#257;lap</i> without any
											contact between the letters)
										</li>
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
									<li class="letterDescription">in both forms, the
										Estrangela type with a conspicuous curve at the top</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td><ul>
									<li class="letterDescription">the line connecting the
										circle and the vertical on the right lower than the top of
										that vertical, i.e. there is a small tip above the right angle</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td><ul>
									<li class="letterDescription">sitting flat or almost flat
										on the baseline, i.e. it is not really a left-leaning &#952;</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">usually of the triangular
										type</li>
								</ul></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><ul>
									<li class="letterDescription">there is a <i>t&#257;w-&#257;lap</i>
										ligature, but it is like the mashed together kind in
										Estrangela, not the typical East Syriac type (see examples on
										lines 4, 3, and 2 from the bottom, but contrast two places in
										line 6 from the bottom, where the triangular <i>t&#257;w</i>
										is followed by the Estrangela <i>&#257;lap</i> without any
										contact between the letters)
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