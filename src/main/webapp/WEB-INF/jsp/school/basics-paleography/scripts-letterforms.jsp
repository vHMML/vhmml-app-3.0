<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2:  Talking About Script; Describing Letterforms" />
	<tiles:putAttribute name="previousSection" value="overview" />
	<tiles:putAttribute name="nextSection" value="scripts-classes" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">TALKING ABOUT SCRIPT</h4>
				<p>
					<b>Script vs. Hand:</b> A <b>script</b> is a type or style of
					writing. A <b>hand</b> is the way an individual scribe writes that
					script. As one paleographer put it, a script is the model a scribe
					has in mind as he writes; a hand is what he actually does when he
					writes. Paleographers classify scripts according to formal and
					stylistic characteristics, following typologies developed by
					specialists in the field and relating those scripts to historical
					and art-historical trends.
				</p>

				<p>
					<b>Other meanings of &#8220;hand&#8221;:</b> You will often see
					&#8220;hand&#8221; used to refer to one particular scribe who worked
					on a given manuscript, as in, &#8220;there are two hands in the
					<i>Beowulf</i> manuscript.&#8221; This means that scholars see different
					versions of the same script in one manuscript and conclude that
					more than one scribe worked on the manuscript. &#8220;Hand&#8221;,
					therefore, becomes a shorthand for the person who wrote that hand.
					Contrary to the description given above between script and hand, it is
					traditional to refer to scripts used primarily in books as
					&#8220;bookhands&#8221; and scripts used primarily in documents as
					&#8220;charter hands.&#8221;
				</p>
				<hr />
				<h4 class="lessonSubheading">DESCRIBING LETTERFORMS</h4>

				<p>
					<b>Minim:</b> A minim is a single upright stroke, equivalent to an
					<b>i</b> (without the dot) &#8212; the &#8220;minimal&#8221;
					component of letters in a given script. 
				</p>
				 <p>					
					<b>Feet:</b> The feet of letters
					are the bottoms of minims.
				</p>
				<p>
					<b>Bow:</b> A bow is the rounded part of a letter like <b>c</b>, <b>d</b>,
					<b>b</b>.
				</p>
				<p>
					<b>Hasta:</b> A hasta is a short horizontal stroke that sticks out
					sideways, like the middle stroke of <b>E</b>. (&#8220;Hasta&#8221;
					means &#8220;spear.&#8221;)
				</p>
				<p>
					<b>Minim-height</b> Minim-height is the height of a minim in a
					given script, which is normally also the height of the majority of
					letters in that script. For example, all the letters in the word
					<b>minim</b> are minim-height. In the word <b>example</b>, only the <b>l</b> is
					taller than minim-height. When we read a script or typeface with
					which we are familiar, our eyes unconsciously focus at the top of
					minim-height for cues to distinguish one letter from another.
					Minim-height is equivalent to x-height in typography.
				</p>
				<p>
					<b>Baseline:</b> The baseline is the notional line on which the feet
					of minims as well as most letters in a given script sit. (Note that
					the baseline may or may not coincide with an actual ruled line on
					the page.)
				</p>
				<p>
					<b>Ascender:</b> An ascender is an upright stroke that sticks up
					above minim-height, as in an <b>l</b>, <b>b</b>, <b>d</b>, or <b>h</b>.
				</p>
				<p>
					<b>Descender:</b> A descender is a vertical stroke that hangs down
					below the baseline, as in <b>p</b> and <b>q</b>.
				</p>
				<%-- 
				<p>
					<i>Click on the images below to see these terms illustrated in
						actual manuscripts.</i>
				</p>


				<div id="openseadragon1"
					style="width: 900px; height: 700px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang116-p3/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang116-p3/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Latin parchment manuscript page from Saint Gallen, 116">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						116, p. 3. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>
				<p>&nbsp;</p>

				<div id="openseadragon2"
					style="width: 900px; height: 700px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2",
						minZoomLevel : "0.8",
						maxZoomLevel : "11",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Latin parchment manuscript page from Saint Gallen, 1394">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1394, p. 12. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>
				--%>
				<p>&nbsp;</p>
				
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
