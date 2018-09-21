<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Classical Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Overview &#8212; Cursives and Capitals" />
	<tiles:putAttribute name="sectionDescription" value="INTRODUCTION" />
	<tiles:putAttribute name="nextSection" value="roman-cursives" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					<strong>Roman Cursives</strong>: Two varieties of informal script
					were used in the Roman period: a majuscule script known as <strong>Older
						Roman Cursive</strong> (also called <strong>Ancient Roman Cursive</strong>),
					which was used at least from the first century <abbr
						title="Before Common Era, sometimes referred to as B.C.">BCE</abbr>
					through the third century <abbr
						title="Common Era, sometimes referred to as A.D.">CE</abbr>, and a
					minuscule script known to scholars as <strong>Later</strong> (or <strong>New
						Roman Cursive</strong>), which succeeded Older Roman Cursive as the script
					of Roman imperial administration.
				</p>

				<p>
					<strong>Roman Capitals</strong>: Two formal, majuscule scripts are
					very widely attested in Roman inscriptions, but in books, they
					survive only for a comparatively small number of very high-grade
					books. These are <strong>Square Capitals</strong> and <strong>Rustic
						Capitals</strong>. Despite being rare in manuscript in antiquity, these
					scripts have a very long after-life and huge influence. Both were
					used as <strong>display scripts</strong> throughout the Middle
					Ages, and <strong>Square Capitals</strong> give us our modern
					upper-case alphabet. 
				</p>

				<p>Click the images below to explore and compare these scripts
					before we discuss them in detail.</p>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Older Roman Cursive</p>
				<div id="openseadragon1"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blpapyri229/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blpapyri229/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Manuscript  page from British Library, MS  Papyri 229">
				</noscript>
				<small><em>&copy; The British Library Board, Papyrus
						229.</em></small>
			</div>
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Later Roman Cursive</p>
				<div id="openseadragon4"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // normally defaults to 0
						minZoomLevel : "1",
						maxZoomLevel : "12",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/p_mich_inv4295r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/p_mich_inv4295r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Manuscript  page from British Library, MS  Papyri 229">
				</noscript>
				<small><em>P.Mich.inv. 4295r. Zoomable image reproduced
						with the permission of the<br /> <a
						href="http://www.lib.umich.edu/papyrology-collection"
						target="_blank">Papyrology Collection, Graduate Library,
							University of Michigan</a>
				</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Square Capitals</p>
				<div id="openseadragon2"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "4", // default 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
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
						1394, p. 12. <br /> (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
			</div>

			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Rustic Capitals</p>
				<div id="openseadragon3"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						zoomPerClick: "1.4", showRotationControl : "true",
						defaultZoomLevel : "3",
						minZoomLevel : "0.9",
						maxZoomLevel : "10",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from The Vatican Library, MS lat. 3225, folio XIVr.">
				</noscript>
				<small><em> &copy; Bibliotheca Apostolica Vaticana,
						Vat. lat. 3225, f. XIVr.</em></small> <br />
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>