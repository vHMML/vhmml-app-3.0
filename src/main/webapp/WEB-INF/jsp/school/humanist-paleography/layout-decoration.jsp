<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Humanist Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 4: Layout and Decoration in Humanist Manuscripts" />
	<tiles:putAttribute name="previousSection" value="humanist-cursive" />
	<tiles:putAttribute name="nextSection" value="humanist-next" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Humanist manuscripts share the plain-page aesthetic of
					Carolingian manuscripts. Note the lightness and spaciousness of the
					way the text is presented in these Humanist manuscripts, whether in
					two columns or one:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-6 col-lg-6 lesson-image">
				<div id="openseadragon1"
					style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from ">
				</noscript>
				<small><em>St. Gallen, Kantonsbibliothek, Vadianische
						Sammlung, VadSlg MS 298.<br />(<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e-codices.unifr.ch</a>)</em></small>

			</div>


			<div class="col-sm-6  col-md-6 col-lg-6 lesson-image">
				<div id="openseadragon2"
					style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cologny_bodmer-cod137-1r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cologny_bodmer-cod137-1r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from ">
				</noscript>
				<small><em>Cologny, Fondation Martin Bodmer, Cod.
						Bodmer 137, f. 1r. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>
			</div>

		</div>

		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-12">
				<p>Compare the manuscripts above to one of the Carolingian
					manuscript we saw earlier, The Reichenau Gospels, mid-11th century.
					The Carolingian manuscript is at left and the Humanist one is at
					right:</p>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-6 col-lg-6 lesson-image">
				<div id="openseadragon4"
					style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from ">
				</noscript>
				<small><em>Walters Art Museum, W.7, f. 10r. &copy; 2011 Walters Art Museum,<br />used under a <a href="https://creativecommons.org/licenses/by-nc-sa/3.0/"  target="_blank">CC BY-SA license</a>.

				</em></small>
			</div>

			<div class="col-sm-6  col-md-6 col-lg-6 lesson-image">
				<div id="openseadragon3"
					style="width: 400px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cologny_bodmer-cod137-1r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cologny_bodmer-cod137-1r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from ">
				</noscript>
				<small><em>Cologny, Fondation Martin Bodmer, Cod.
						Bodmer 137, f. 1r.<br />(<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)</em></small>
			</div>
			
			
			<p>&nbsp;</p>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>This is in part a result of the small minim-height and
					generous line spacing used in Humanist scripts, as in Caroline
					minuscule, and in part the result of a conscious aesthetic decision
					about the presentation of script on the page. In many Humanist
					manuscripts, the ruling is essentially invisible &#8212; a return
					to the dry-point ruling of the pre-Gothic period. Such ruling may
					be all but impossible to detect in a digitized image.</p>
				<p>Some Humanist manuscripts, however, even though they do not
					use dark ink for ruling, show that the person who prepared the
					parchment was trained in typical late-medieval ruling patterns. In
					this manuscript, you can see that the writing starts <em>below</em> the top
					ruled line, where a Carolingian manuscript would have the writing
					start <em>above</em> the top ruled line:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">

				<%-- <div id="openseadragon5"
					style="width: 900px; height: 200px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
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
						alt="manuscript page from ">
				</noscript>--%>
				<img
					src="${pageContext.request.contextPath}/static/img/school/humanist-paleography/Cologny_Bodmer-Cod137-1r_cropped_arrow.jpg" width="900"
					alt="manuscript page showing line on top of page "><br/> cropped from <small><em>Cologny,
						Fondation Martin Bodmer, Cod. Bodmer 137, f. 1r. (<a
						href="http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>

				<p>&nbsp;</p>
				<p>This detail does not disturb the overall spaciousness and
					lightness of the page, but it does remind us that these manuscripts
					were made by people who practiced many different scripts and were
					trained in the manuscript production modes of their own day. This
					is the same manuscript we noted above that contains the round <b>s</b> at
					word end and other traces of Gothic script features.</p>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Decoration</h4>
				<p>Humanist manuscripts borrow their page aesthetics from
					Carolingian models and, like those Carolingian models, employ
					decorative schemes that consciously echo antiquity. However, they
					use a 15th-century version of Classicism, not a 9th-
					to-11th-century version. Humanist manuscripts have their own
					decorative vocabulary, in which you may recognize Renaissance
					naturalistic painting. The most widely-used and easy-to-spot
					decorative feature is the white vine-scroll. If you see initials or
					borders with white vine-scrolls, you are definitely looking at a
					Humanist manuscript, not a Carolingian one.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<img
					src="${pageContext.request.contextPath}/static/img/school/humanist-paleography/St Gallen-Kantonsbibl-VadSamm298-f2r_croppedupperleft.jpg" 
					alt="manuscript page showing script with some larger characters intertwined with vine decoration"><br/> cropped from <small><em>St. Gallen, Kantonsbibliothek, Vadianische
						Sammlung, VadSlg MS 298 (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
				<p>&nbsp;</p>
				</div>
		</div>
		<%-- -<div class="row">
			<div class="col-lg-12">
				
				<div id="openseadragon6"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon6",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel: "1", 
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page showing script with some larger characters intertwined with vine decoration">
				</noscript>

				<small><em>St. Gallen, Kantonsbibliothek, Vadianische
						Sammlung, VadSlg MS 298 (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>

				<p>&nbsp;</p>
			</div>
		</div>
		--%>
	</tiles:putAttribute>
</tiles:insertTemplate>