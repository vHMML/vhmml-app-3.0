<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 13: Alqosh, DCA 5, f. 15v (dated 1679)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="qacct-12" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p class="imageTitle">1990 AG = 1679 CE, Oct. 12</p>
				<div id="openseadragon1"
					style="width: 900px; height: 940px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.6",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/dca_00005_015v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/dca_00005_015v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript manuscript page written in later estrangela  script">
				</noscript>
				<small><em>Alqosh, Chaldean Diocese, DCA 5, f. 15v. All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>
					This manuscript shows writing very similar to the last few
					examples. Again we have a thick, stately hand with only a few very
					thin lines for contrast and no Serto-like features. The thin lines
					are in the right leg of the <i>&#257;lap</i> (with a dot on the
					bottom), the center line of the <i>h&#275;</i>, and in the
					descenders (or parts of them) of <i>&#x1e63;&#257;d&#275;</i> and final <i>k&#257;p</i>,
					<i>mim</i>, and <i>nun</i>. The spacing of the words is sometimes
					cramped.
				</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>