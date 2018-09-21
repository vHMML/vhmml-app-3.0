<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Relative Dating of Carolingian and Protogothic Manuscripts" />

	<tiles:putAttribute name="previousSection" value="gothic-layout" />
	<tiles:putAttribute name="nextSection" value="southern-textualis" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
				<p>Which TWO of these manuscripts are EARLIER than the 12th
					century?</p>

				
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-6 col-lg-4 lesson-image">
				a.  <div id="openseadragon1"
					style="width:300px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w710r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/walters-w7-10r.jpg"
					alt="manuscript page from Walter 7" >
				</noscript>
				
				<small><em>Walters
						Art Museum, W.7, f. 10r.<br /> &copy; 2011 Walters Art Museum,
						
					<a href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small> &nbsp;
			</div>
			<div class="col-sm-6 col-md-6 col-lg-4 lesson-image">
				b. <div id="openseadragon2"
					style="width:300px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/manuscriptbiblepage/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen:  <img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/aap1306.jpg"
					alt=" manuscript page with two columns with illuminated character"
					>
					</noscript>
		<small><em>HMML, Arca
						Artium (aap1306 verso).<br />Used under a <a
						href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.
				</em></small>&nbsp;
				
			</div>
			<div class="col-sm-6 col-md-6 col-lg-4 lesson-image">
				c. <div id="openseadragon3"
					style="width:300px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/hmml_aap2871/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/aap2871_front.jpg"
					alt=" manuscript page from Benedictine Psalter" >
				</noscript>
				
				<small><em>HMML, Arca Artium (aap2871 verso).<br />Used
						under a <a href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.<br /></em></small></div>
			<div class="col-sm-6 col-md-6 col-lg-4 lesson-image">
				d.<div id="openseadragon4"
					style="width:300px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/luke_3_33_76r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/luke_3_33_76r.jpg" 
					alt=" manuscript page with two columns" > 
					</noscript>
				<small><em>HMML, MS Frag. 19, recto.<br />Used under
						a <a href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.
				</em></small></div><div class="col-sm-6 col-md-6 col-lg-4 lesson-image">
				e.<div id="openseadragon5"
					style="width:300px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary_0007r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen:  
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/bethune_breviary_0007r.jpg"
					alt="manuscript page from Behune Breviary" >
					</noscript>
				<small><em>HMML, Bethune Breviary, MS 2, f. 7r.<br />
						Used under a <a
						href="https://creativecommons.org/licenses/by-nc/4.0/"
						target="_blank">CC BY-NC 4.0 license</a>.
				</em></small>
			</div>
			<div class="col-sm-6 col-md-6 col-lg-4 lesson-image">
				f.  <div id="openseadragon6"
					style="width:300px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon6",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley1775/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/bl_ms_harley 1775-193r.jpg"
					alt=" manuscript page with single column" > 
					</noscript>
				<small><em>&copy; The British Library Board, Harley
						1775, f. 193r.<br />&nbsp;
				</em></small>&nbsp;
				
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<button class="btn left school showAnswer">Display the
					Answer</button>
				<span class="exerciseAnswer">
					<p>a. (Walters MS W.7) and f. (Harley MS 1775). <br />Walters W.7 is
						9th century, and Harley MS 1775 is one of the 6th-century Uncial
						manuscripts we looked at back in unit 3.</p>
					<hr />
					<p>What clues to dating guided your choice?</p>
				</span>
				<p>&nbsp;</p>
			</div>

		</div>
		
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>