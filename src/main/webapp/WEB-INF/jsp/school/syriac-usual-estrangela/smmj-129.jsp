<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 6: Jerusalem, SMMJ 129, pp. 120-121 (dated 806)" />
	<tiles:putAttribute name="sectionDescription"
		value="Quriaqos of Tagrit" />
	<tiles:putAttribute name="previousSection" value="cod-ambr-a" />
	<tiles:putAttribute name="nextSection" value="vat-sir-161-f-113v" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>The bulk of the manuscript is devoted to theological
					treatises of Quriaqos of Tagrit, in whose lifetime this manuscript
					was copied. The main text is in Estrangela, while the colophon is
					in Serto.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p class="imageTitle">Part of the Serto colophon (dated Oct. 3,
					806) <small>--static non-zoomable image</small></p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/syriac-usual/smmj129p189sertocol.png"
					alt="left column cropped from Syriac manuscript showing details of serto script" />
					<br />
				 column from <small><em>Jerusalem, Saint Mark's Monastery, SMMJ 129,
						p. 189.<br /> All rights reserved. Image provided by HMML.</em></small>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">


				<div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel: "1", 
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj129_120-21/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj129_120-21/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript in usual estrangela script ">
				</noscript>


				<small><em>Jerusalem, Saint Mark's Monastery, SMMJ 129,
						pp. 120-121. All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>The Estrangela script here is rather angular and makes a
					careful, stately impression.</p>
				<p>&nbsp;</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
					<table class="table">
						<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>&#257;lap</i></td>
								<td>has a conspicuous curve upward at the top, but usually
									with not much of a dot or serif at the end</td>
							</tr>
							<tr>
								<td><i>b&#275;t</i></td>
								<td>has a notable short top line</td>
							</tr>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td>ends in a dot</td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td>angled, with a thicker top line that is not as long as
									the vertical line</td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td>sharp on the right and has an open loop</td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td>sharp on the right, with an open loop, and the top part
									curving upward on the left</td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td>has a much higher and separately formed left loop</td>
							</tr>
							<tr>
								<td><i>&#x02BF;&#275;</i></td>
								<td>has a dot on the far right</td>
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
							<td>has a conspicuous curve upward at the top, but usually
								with not much of a dot or serif at the end</td>
						</tr>
						<tr>
							<td><i>b&#275;t</i></td>
							<td>has a notable short top line</td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td>ends in a dot</td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td>angled, with a thicker top line that is not as long as
								the vertical line</td>
						</tr>
						<tr>
							<td><i>w&#257;w</i></td>
							<td>sharp on the right and has an open loop</td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td>sharp on the right, with an open loop, and the top part
								curving upward on the left</td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td>has a much higher and separately formed left loop</td>
						</tr>
						<tr>
							<td><i>&#x02BF;&#275;</i></td>
							<td>has a dot on the far right</td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>