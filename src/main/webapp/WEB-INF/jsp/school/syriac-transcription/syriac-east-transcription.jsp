<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 3: East Syriac Transcription" />
	<tiles:putAttribute name="sectionDescription"
		value="Mardin, CCM 20, f. 184v" />
	<tiles:putAttribute name="previousSection"
		value="syriac-estrangela-transcription" />
	<tiles:putAttribute name="nextSection"
		value="syriac-serto-transcription" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">

				<p class="imageTitle">Please transcribe all 26 lines from CCM
					20, f. 184v.</p>
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm20_186v_anno/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm20_186v_anno/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page showing  manuscript from Mardin, Turkey">
				</noscript>
				<small><em>Mardin, Chaldean Cathedral, CCM 20,
						f. 184v. All rights reserved. Image provided by HMML.</em></small> &nbsp;

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<button class="btn left school showAnswer">Display
					Transcription Solution</button>
				<span class="exerciseAnswer"><span class="answerTitle">CCM 20, f.184v Transcription
						Answer Key</span><span class="answer">
						<p>
							<img
								src="${pageContext.request.contextPath}/static/img/school/syriac-transcription/CCM20f184v_composite.jpg"
								width="550"
								alt="Syriac solution answer for transcribing East Syriac script manuscript from Mardin, CCM 20, f. 184v">
						</p>
				</span></span>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>