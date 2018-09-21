<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Humanist Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Historical Overview" />
	<tiles:putAttribute name="nextSection" value="humanist-minuscule" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>All the previous scripts we&#8217;ve studied grew organically
					from gradual stylistic evolution and the practice of many scribes
					in many centers. Even Caroline minuscule, which was shaped by the
					agenda of a particular movement for the reform of texts, language,
					and liturgy, built on decades of previous experimentation to
					achieve a clearer script, and emerged from several monastic and
					scholarly centers at around the same time.</p>
				<p>Humanist scripts, by contrast, were the conscious creation of
					a handful of Florentine scholars.</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-4 col-lg-4 lesson-image">

				<div id="openseadragon1"
					style="width: 300px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "1",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page showing humanist script ">
				</noscript>
				<small><em>St. Gallen, Kantonsbibliothek, Vadianische
						Sammlung,<br />VadSlg MS 298 (<a
						href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
			</div>


			<div class="col-sm-6  col-md-4 col-lg-4  lesson-image">

				<div id="openseadragon2"
					style="width: 300px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "1",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cologny_bodmer-cod137-1r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cologny_bodmer-cod137-1r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page also showing humanist script ">
				</noscript>
				<small><em>Cologny, Fondation Martin Bodmer,<br />Cod.
						Bodmer 137, f. 1r. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>
			</div>

			<div class="col-sm-6 col-md-3 col-lg-4 lesson-image">

				<div id="openseadragon3"
					style="width: 300px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "1",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/sjrb_mslat4_5r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/sjrb_mslat4_5r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="another example of a manuscript page showing humanist script ">
				</noscript>
				<small><em>HMML, MS. Lat. 4, f. 5r. Used under  a <a href="https://creativecommons.org/licenses/by-nc/4.0/"  target="_blank">CC BY-NC 4.0 license</a>.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>In the last years of the 14th century, Petrarch began
					experimenting with a new personal script. He was interested in
					creating a clearer alternative to the plethora of Gothic scripts
					familiar in his day. His friends Boccacio and Coluccio Salutati
					picked up on his experiments. These men were trained in Italian
					chancery scripts, which had some influence on their experiments, as
					did Southern Textualis (Rotunda). They were used to reading both
					the full range of Gothic scripts, which were what they wanted to
					avoid, as well as Caroline minuscule, which was the script in which
					the Classical texts they studied had reached the late Middle Ages.</p>
				<p>Shortly after the year 1400, Salutati&#8217;s student Poggio
					Bracciolini created a new script in imitation of Caroline
					minuscule. It is Poggio&#8217;s script, as practiced by him and
					imitated by other scribes in the 15th century, that we know as
					Humanist minuscule. Within just a few years, another scholar in the
					same circle, Niccolo Niccolini, created a calligraphic cursive
					version of Humanist script, which became what we know today as
					Italic.</p>
			</div>
		</div>

		<p>&nbsp;</p>

	</tiles:putAttribute>
</tiles:insertTemplate>