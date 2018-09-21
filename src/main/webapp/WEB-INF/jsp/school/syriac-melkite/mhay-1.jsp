<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName" value="Section 3: Mhadsei, MHAY 1, ff. 4v-5r (dated 1512)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="ccm-147" />
	<tiles:putAttribute name="nextSection" value="diyr-62" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/mhay1_5r4v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/mhay1_5r4v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from MHAY 1">
				</noscript>
				<small><em>Mhadsei, Church of the Theotokos, MHAY 1,
						ff. 4v-5r. All rights reserved. Image provided by HMML.</em></small>
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
										<li class="letterDescription">in both the Estrangela
											shape &#40;with the right leg, not the left, hanging below
											the line&#41; and the single line type of Serto and East
											Syriac, the top angling back to the right; this line type is
											rather curvy sometimes</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">of the Serto shape</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td><ul>
										<li class="letterDescription">with the right vertical
											reaching below the line, and when joined to the previous
											letter, the joining line attached to the <i>h&#275;</i>
											rather high on that vertical, not at the bottom
										</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">often a circle, but
											sometimes an almost closed loop</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>h&#275;-w&#257;w</i></td>
								<td>
									<ul>
					<li class="letterDescription">the ligature for the combination <i>h&#275;-w&#257;w</i>
					&#40;e.g. f. 4va, lines 4 and 7 from the bottom, and f. 4vb, lines
					5 and 6&#41;, which, however, is not always employed.
					</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td>
									<ul>
										<li class="letterDescription">boxy, but with slightly
											rounded corners</li>
										<li class="letterDescription">the final form is not quite
											closed, and the descender, thin and angling off to the left</li>
									</ul>
								</td>
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
									<li class="letterDescription">in both the Estrangela shape
										&#40;with the right leg, not the left, hanging below the
										line&#41; and the single line type of Serto and East Syriac,
										the top angling back to the right; this line type is rather
										curvy sometimes</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">of the Serto shape</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td><ul>
									<li class="letterDescription">with the right vertical
										reaching below the line, and when joined to the previous
										letter, the joining line attached to the <i>h&#275;</i> rather
										high on that vertical, not at the bottom
									</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>w&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">often a circle, but
										sometimes an almost closed loop</li>
								</ul></td>
						</tr>
						<tr>
								<td><i>h&#275;-w&#257;w</i></td>
								<td>
									<ul>
					<li class="letterDescription">the ligature for the combination <i>h&#275;-w&#257;w</i>
					&#40;e.g. f. 4va, lines 4 and 7 from the bottom, and f. 4vb, lines
					5 and 6&#41;, which, however, is not always employed.
					</li>
									</ul>
								</td>
							</tr>
						<tr>
							<td><i>mim</i></td>
							<td>
								<ul>
									<li class="letterDescription">boxy, but with slightly
										rounded corners</li>
									<li class="letterDescription">the final form is not quite
										closed, and the descender, thin and angling off to the left</li>
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