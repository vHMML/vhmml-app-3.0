<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Easy Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 5: Mardin, CCM 65, f. 50v (13th/14th century)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary with Commentary" />
	<tiles:putAttribute name="previousSection" value="ccm-115" />
	<tiles:putAttribute name="nextSection" value="ccm-419" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm65_50v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm65_50v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CCM 65">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 65, f. 50v.
						All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>
		</p>

		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>
					This bilingual Syriac-Arabic manuscript is not easily
					classified according to a simple Estrangela-Serto-East Syriac
					paradigm. The only distinctive East Syriac forms are the <i>g&#257;mal</i>,
						the <i>semkat</i> and the <i>t&#257;w-&#257;lap</i> ligature. (The
						vowels here are East Syriac.)
				</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">always of the simple
										vertical line variety</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">of the Serto type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td><ul>
									<li class="letterDescription">the left-leaning &#952; type</li>
								</ul></td>
						</tr>


						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">in both forms that often
										appear in East Syriac manuscripts, but there is a third type,
										shaped like a <b>v</b> that hangs below the line (see, for
										example, the word <i>hwt</i> in the last line of f. 50v, and <i>qrbt</i>
										four lines from the bottom, but contrast <i>sgdt</i> two lines
										from the bottom)
									</li>
									<li class="letterDescription">this <i>v</i>-shape is like
										that of the <i>t&#257;w-&#257;lap</i> ligature without an <i>&#257;lap</i>
										component
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
									<li class="letterDescription">always of the simple
										vertical line variety</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">of the Serto type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td><ul>
									<li class="letterDescription">the left-leaning &#952; type</li>
								</ul></td>
						</tr>


						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">in both forms that often
										appear in East Syriac manuscripts, but there is a third type,
										shaped like a <b>v</b> that hangs below the line (see, for
										example, the word <i>hwt</i> in the last line of f. 50v, and <i>qrbt</i>
										four lines from the bottom, but contrast <i>sgdt</i> two lines
										from the bottom)
									</li>
									<li class="letterDescription">this <i>v</i>-shape is like
										that of the <i>t&#257;w-&#257;lap</i> ligature without an <i>&#257;lap</i>
										component
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