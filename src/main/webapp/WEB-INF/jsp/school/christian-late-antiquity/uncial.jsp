<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Christian Late Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 2: Uncial" />
	<tiles:putAttribute name="sectionDescription"
		value="UNCIAL: ASPECT; COMPARISON TO SQUARE CAPITALS" />
	<tiles:putAttribute name="previousSection" value="intro" />
	<tiles:putAttribute name="nextSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>You can see from the detail below that Uncial is a "chubby"
					script in aspect. Can you see what letters particularly give it
					that impression?</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p class="imageTitle">Uncial, Italy, last quarter of the 6th
					century</p>
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "3", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page showing uncial script with ssome letters that are thicker/wider than others">
				</noscript>
				<small><em>&copy; The British Library Board, Harley
						1775, f. 193r.</em></small>

			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">

				<p>Several letters that are made in whole or in part of straight
					lines in the ancient capitals are made up of generous curved
					strokes in Uncial.</p>

				<p>Compare this manuscript in Square Capitals that we looked at
					in the <a href="${pageContext.request.contextPath}/school/lesson/classical-antiquity/square-capitals">last lesson</a>. What do Uncials and Square Capitals have in
					common? What are the differences?</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p class="imageTitle">Square Capitals, Italy, 4th or 5th century</p>
				<div id="openseadragon2"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "4", 
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Saint Gallen Number 1394, page 12">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1394, p. 12. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e-codices.unifr.ch</a> )
				</em></small> <br />
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Uncial: Characteristic letterforms
				</h4>
				<p>
					Uncial uses a mix of letterforms that we would consider "upper
					case" &#8212; notably the <b>B</b>, <b>N</b>, <b>R</b>, and <b>S</b>
					&#8212; and others that we recognize from our lower-case alphabet
					&#8212; especially the <b>d</b>, <b>e</b>, <b>h</b>, <b>m</b>, and
					<b>u</b>. (The <b>A</b> is somewhere in between, with the upright,
					triangular shape of our upper-case <b>A</b>, but with a loop for
					the left leg that ultimately turns into a form that gives us our
					typographic lower-case <b>a</b>.) Nonetheless, we classify the
					script as a majuscule because the majority of letters are the same
					height &#8212; as if written between two imaginary lines. Just a
					few letters stick up a bit or hang down a bit.
				</p>

				<img
					src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BLAdd89000_closeup2.png"
					width="900"
					alt="extreme closeup detail of line from manuscript showing Uncial characteristic letterforms" /><br />
				<br /> <img
					src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BLAdd89000_closeup3.png"
					width="900"
					alt="extreme closeup detail number 2 of line from manuscript showing Uncial characteristic letterforms" /><br />
				<br /> <img
					src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BLAdd89000_closeup4.png"
					width="900"
					alt="extreme closeup detail number 3 of line from manuscript showing Uncial characteristic letterforms" /><br />
				<br /> <img
					src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BLAdd89000_closeup5.png"
					width="900"
					alt="extreme closeup detail number 4 of line from manuscript showing Uncial characteristic letterforms" /><br />
				<small><em>&copy; The British Library Board, London,
						British Library, MS Add. 89000.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>
					To recognize Uncial when you see it in the future, remember to
					check for the rounded, lower-case style <b>d</b> with its ascender
					leaning over to the left, the lower-case-style <b>e</b>, and the
					very rounded <b>m</b> with two large bows.
				</p>

				<p>Click on the images of other Uncial manuscripts below to
					explore the script in more detail.</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6  lesson-image">
				<p class="imageTitle">Italy, last quarter of the 6th century</p>
				<div id="openseadragon3"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						zoomPerClick: "1.4", showRotationControl : "true",
						//minZoomLevel : "1",
						maxZoomLevel : "8",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page originally from Italy">
				</noscript>
				<small><em>&copy; The British Library Board, Harley
						1775, f. 193r.</em> </small>
			</div>
			<div class="col-lg-6  lesson-image">
				<p class="imageTitle">Italy, ca. 600</p>
				<div id="openseadragon4"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						zoomPerClick: "1.4", showRotationControl : "true",
						//minZoomLevel : "1",
						maxZoomLevel : "8",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BAV-Pal.lat.210.f.004r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/BAV-Pal.lat.210.f.004r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript image from the Vatican showing Uncial script">
				</noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Pal.
						lat. 210, f. 4r.</em></small>

			</div>
		</div>

		<div class="row">
			<div class="col-lg-6  lesson-image">
				<p class="imageTitle">Italy, ca. 600</p>
				<div id="openseadragon5"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						zoomPerClick: "1.4", showRotationControl : "true",
						//minZoomLevel : "1",
						maxZoomLevel : "8",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BodleianAuct.d.2.14/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/BodleianAuct.d.2.14/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript image from Oxford showing Uncial script">
				</noscript>
				<small><em>The Bodleian Libraries, The University of
						Oxford, Auct. D. 2. 14, f. 130r.</em> </small>
			</div>
			<div class="col-lg-6  lesson-image">
				<p class="imageTitle">England (Northumbria), 698</p>
				<div id="openseadragon6"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon6",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						zoomPerClick: "1.4", showRotationControl : "true",
						//minZoomLevel : "1",
						maxZoomLevel : "8",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BLAdd89000/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/BLAdd89000/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript image from British Library showing Uncial script">
				</noscript>
				<small><em>&copy; The British Library Board, MS Add.
						89000, f. 1r.</em></small>
				<p>&nbsp;</p>

			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
