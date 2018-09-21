<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName"
		value="Section 6:  Mardin, CCM 419, f. 4v (dated 1395)" />
	<tiles:putAttribute name="sectionDescription"
		value="Gewargis Warda and Khamis bar Qardahe" />
	<tiles:putAttribute name="previousSection" value="ccm-65" />
	<tiles:putAttribute name="nextSection" value="qaact-9" />
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
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm419_5/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm419_5/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from CCM 419">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 419, f.
						4v-5r. All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">

				<p>
					This manuscript in general offers a very typical kind of East
					Syriac. It also shows both kinds of <i>t&#257;w</i> : the form similar to the
					Estrangela-type (the more common here), and the triangular shaped
					 <i>t&#257;w</i>. Whether or not  <i>t&#257;w</i> is attached to the previous
					letter has no effect on the chosen shape. In addition, the <i>&#7789;&#275;t</i> often has a sharp lower part, but with a preceding
					joined letter it sometimes appears with a round lower part, as in
					Serto. 
					
				
				</p>


				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>