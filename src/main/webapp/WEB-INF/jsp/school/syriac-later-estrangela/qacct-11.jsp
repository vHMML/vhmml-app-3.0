<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 10: Tell Kaif, QACCT 11, f. 26v (dated 1587)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="ccm-62" />
	<tiles:putAttribute name="nextSection" value="dcd-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 800px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.6",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/qacct_00011_026v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/qacct_00011_026v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from QACCT 11">
				</noscript>
				<small><em>Tell Kaif, Qalb Al-Aqdas Chaldean Church,
						QACCT 11, f. 26v. All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>
					Again, there are no Serto shapes, and these are all common
					Estrangela forms. The colophon is in East Syriac, in contrast to
					the main text's Estrangela. The taller letters (<i>&#7789;&#275;t</i>,
					<i>l&#257;mad</i>, <i>t&#257;w</i>) are especially tall. <i>Mim</i>
					and <i>nun</i>, in final forms, have very thin descenders. Only a
					few other features call for comment:
				</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul><li class="letterDescription">a very thin leg on the right with a dot on the bottom</li></ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul><li class="letterDescription">dot on the bottom</li></ul></td>
						</tr>
						<tr>
							<td><i>yod</i></td>
							<td><ul><li class="letterDescription">very small in final form</li></ul> </td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td><ul><li class="letterDescription">pointed loops, the left one taller</li></ul></td>
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
							<td><ul><li class="letterDescription">a very thin leg on the right with a dot on the bottom</li></ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul><li class="letterDescription">dot on the bottom</li></ul></td>
						</tr>
						<tr>
							<td><i>yod</i></td>
							<td><ul><li class="letterDescription">very small in final form</li></ul></td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td><ul><li class="letterDescription">pointed loops, the left one taller</li></ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>