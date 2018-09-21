<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 5: Melkite Transcription" />
	<tiles:putAttribute name="sectionDescription"
		value="Hamatura, HMTR 26, f. 11v" />
	<tiles:putAttribute name="previousSection"
		value="syriac-serto-transcription" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">

				<p class="imageTitle">
					Please transcribe both column <b>a</b> and b from this Melkite manuscript from Lebanon.
				</p>
				<div id="openseadragon1"
					style="width: 600px; height: 800px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/hmtr026_012r_011v_annot/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/hmtr026_012r_011v_annot/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page showing  manuscript from Mardin, Turkey">
				</noscript>
				<small><em>Hamatura, Monastery of the Theotokos, HMTR 26, f.
						11v. All rights reserved. Image provided by HMML. </em></small> &nbsp;

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<button class="btn left school showAnswer">
					Transcription Solution for Column <b>a</b>
				</button>
				<span class="exerciseAnswer"><span class="answerTitle">Column
						"a" Transcription Answer Key</span><span class="answer"> 
						<img
								src="${pageContext.request.contextPath}/static/img/school/syriac-transcription/hmtr26f11v_colA_composite.jpg"
								width="550"
								alt="Syriac solution answer for transcribing Melkite Syriac script manuscript from Hamatoura, Lebanon">

				</span></span>
				<p>&nbsp;</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">
					Transcription Solution for Column <b>b</b>
				</button>
				<span class="exerciseAnswer"><span class="answerTitle">Column
						"b" Transcription Answer Key</span><span class="answer"> <img
						src="${pageContext.request.contextPath}/static/img/school/syriac-transcription/hmtr26f11v_colB_composite.jpg"
						width="550"
						alt="Syriac solution answer for transcribing SMMJ  129, page 185">

				</span></span>

<p>&nbsp;</p>
				<p>&nbsp;</p>
			</div>
		</div>
		
				
	</tiles:putAttribute>
</tiles:insertTemplate>