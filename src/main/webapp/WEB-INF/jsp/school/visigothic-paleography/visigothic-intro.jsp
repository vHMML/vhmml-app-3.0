<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Visigothic and Beneventan: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 1: Introduction" />
	<tiles:putAttribute name="nextSection" value="visigothic-script" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>The last three lessons have traced the evolution of script in
					northwestern Europe &#8212; the British Isles and the areas of the
					Continent under the cultural influence of the Carolingian empire
					and its successors: modern France, the Low Countries, Germany, and
					northern Italy. That is a story of the emergence of regional and
					local scripts in the early Middle Ages; a consolidation over the
					9th and 10th centuries with the spread of Caroline Minuscule; and
					the transformation of Caroline Minuscule into Textualis between the
					late 11th and the early 13th centuries.</p>
				<p>In southern Europe &#8212; the Iberian peninsula (modern
					Spain and Portugal), southern Italy, and Dalmatia &#8212; the
					history of script is different in some respects. This lesson covers
					two distinctive scripts of southern Europe: Visigothic, the script
					of the Iberian peninsula; and Beneventan, the script of the Abbey of
					Monte Cassino and its region of influence (primarily southern Italy
					and Dalmatia, on the eastern shore of the Adriatic).</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Visigothic Script, 10th century</p>
				<div id="openseadragon1"
					style="width: 450px; height: 700px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add11695f194r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add11695f194r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from the British library written in Visigothic Script">
				</noscript>
				<small><em>&copy; The British Library Board, Add.
						11695, f. 194r.</em></small>
				
			</div>

			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Beneventan Script, 11th century</p>
				<div id="openseadragon2"
					style="width: 450px; height: 700px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add30337f8r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add30337f8r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from the British library in Beneventan Script">
				</noscript>
				<small><em>&copy; The British Library Board, Add.
						30337, f. 8r.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>We are going backwards in time to discuss Visigothic and
					Beneventan. These are both scripts that emerged in the early Middle
					Ages. Their development broadly paralleled that of the Insular
					scripts and the pre-Caroline scripts of northern France. Both
					scripts developed in the heart of the former Roman world &#8212;
					Italy itself, south of Rome, for Beneventan, and Spain, one of the
					most ancient Roman provinces, for Visigothic.</p>
				<p>These scripts emerge from an environment where books were
					written in Half-Uncial in late antiquity, and where the tradition
					of the Roman documentary scripts &#8212; Later Roman Cursive and
					its descendants &#8212; persisted after the end of the Roman
					empire. They thus share a minuscule alphabet with the other early
					medieval scripts that descend from Half-Uncial and Later Roman
					Cursive. Their alphabets are essentially those of Half-Uncial, with
					a repertory of ligatures that comes from Later Roman Cursive. As
					Visigothic and Beneventan were perfected and codified, they
					developed specialized uses of those ligatures, special varieties of
					the originally-Half-Uncial letterforms, and, in the case of
					Beneventan, an entirely distinctive ductus.</p>
				<p>These are scripts with very long lifespans. They emerge in
					the 8th century or earlier. Visigothic lasts at least until the
					13th century and Beneventan lasts till the end of the Middle Ages.
					Rather than tracing the whole history of these scripts and their
					varieties, the discussion in the sections that follow focuses on
					the key identifying characteristics of each script, with examples
					from the 10th and 11th centuries.</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>