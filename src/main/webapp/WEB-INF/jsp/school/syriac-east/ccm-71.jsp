<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 11: Mardin, CCM 71, f. 59v (dated 1536)" />
	<tiles:putAttribute name="sectionDescription" value="Epistle Lectionary" />
	<tiles:putAttribute name="previousSection" value="dfm-13" />
	<tiles:putAttribute name="nextSection" value="cam-3" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm71_59v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm71_59v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CCM 71">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 71, f. 59v.
						All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">

				<p>&nbsp;</p>

				<p>This manuscript has a loose, more flowing character overall
					than is typical for East Syriac manuscripts. It shows a fluid, less
					calligraphic hand that is nevertheless quite legible.</p>
					 <button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">of the Estrangela type, with
										a strong curve at the top line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">very round, like <i>h&#275;</i>
										and <i>k&#257;p</i>
									</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">in final form, angular, as
										often, with a straight descender angled a bit to the left</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">of the Estrangela type</li>
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
									<li class="letterDescription">of the Estrangela type, with
										a strong curve at the top line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">very round, like <i>h&#275;</i>
										and <i>k&#257;p</i>
									</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">in final form, angular, as
										often, with a straight descender angled a bit to the left</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">of the Estrangela type</li>
								</ul></td>
						</tr>
					</tbody>
				</table>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>