<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 4: Serto Transcription" />

	<tiles:putAttribute name="sectionDescription" value="Mardin, CFMM 310, p. 62" />
	<tiles:putAttribute name="previousSection"
		value="syriac-east-transcription" />
	<tiles:putAttribute name="nextSection"
		value="syriac-melkite-transcription" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />


	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">

				<p class="imageTitle">Please transcribe all 27 lines from CFMM
					310, p. 62.</p>
				<div id="openseadragon1"
					style="width: 600px; height: 800px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm310_32r31v_annot/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm310_32r31v_annot/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page showing  manuscript from Mardin, Turkey">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM 310,
						p. 62. All rights reserved. Image provided by HMML.</em></small> &nbsp;
			</div>
		</div>
			<div class="row">
		<div class="col-lg-12">
			<p>&nbsp;</p>
			<button class="btn left school showAnswer">Display
				Transcription Solution</button>
			<span class="exerciseAnswer"><span class="answerTitle">CFMM 310,
						p. 62 Transcription
					Answer Key</span><span class="answer">
					<p>
						<img
							src="${pageContext.request.contextPath}/static/img/school/syriac-transcription/cfmm310composite1600.jpg"
							width="550"
							alt="Syriac solution answer for transcribing Serto Syriac script manuscript from Mardin, Turkey">
					</p>
			</span></span>
			<p>&nbsp;</p>
			<p>&nbsp;</p>	
		</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>