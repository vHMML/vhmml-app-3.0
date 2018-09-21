<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 4: Mardin, CCM 115, f. 7v (dated 1287/8)" />
	<tiles:putAttribute name="sectionDescription" value="<i>&#7716;udr&#257;</i>"/>
	<tiles:putAttribute name="previousSection" value="cammic-1" />
	<tiles:putAttribute name="nextSection" value="ccm-65" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm115_7v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm115_7v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CCM 115">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 115, f. 7v.
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
									<li class="letterDescription">in both types</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">of the usual Serto type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">tending more toward the
										Estrangela shape, i.e. the letter has some angle at the bottom
										and is not merely a long stroke bisecting the baseline</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">either angled or round at
										the bottom</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">in final form of the type
										apparently written without lifting the pen (i.e. it goes from
										the baseline slightly up, then down and left, then in a
										descender back to the right, ending in a curve</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">of the triangular shape; the
										t&#257;w-&#257;lap ligature appears</li>
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
									<li class="letterDescription">in both types</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">of the usual Serto type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">tending more toward the
										Estrangela shape, i.e. the letter has some angle at the bottom
										and is not merely a long stroke bisecting the baseline</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">either angled or round at
										the bottom</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">in final form of the type
										apparently written without lifting the pen (i.e. it goes from
										the baseline slightly up, then down and left, then in a
										descender back to the right, ending in a curve</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">of the triangular shape; the
										t&#257;w-&#257;lap ligature appears</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>