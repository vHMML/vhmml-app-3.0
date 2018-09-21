<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName" value="Which is Earlier?" />
	<tiles:putAttribute name="previousSection" value="transition-caroline" />
	<tiles:putAttribute name="nextSection" value="textualis" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>On the basis of what you know so far about aspect and
					particular letterforms in the transition from Caroline Minuscule to
					Gothic Textualis, examine the two manuscripts below. Which one is
					EARLIER?</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p>a.</p>


				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.4", 
						minZoomLevel : "0.35",
						maxZoomLevel : "4",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w438r/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/openseadragon/images/walters-w438r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Walters 4">
				</noscript>
				<small><em>
						<!--Walters Art Museum, W.4, f. 38r, --> &copy; 2011 Walters Art
						Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
				</div>
				</div>
				<div class="row">
				<div class="col-lg-12 lesson-image">
				<p>b.</p>

				<div id="openseadragon2"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.6",
						minZoomLevel : "0.45",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w12-5r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/openseadragon/images/walters-w12-5r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Walters 12">
				</noscript>
				<small><em>
						<!--Walters Art Museum, W.12, f. 5r,  -->&copy; 2011 Walters Art
						Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
			
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display the
					Answer</button>
				<span class="exerciseAnswer">
					<p>Manuscript a. is the correct choice.<%-- a. The image from Walters 4 is the correct choice.--%></p>
					<hr />
					<p>
						(a.) Walters MS W.4 is 9th century, and (b.) Walters MS W.12 is 12th
						century. Did you notice the occasional round <b>s</b> at the ends
						of words in Walters W.12? Did you find the Uncial <b>d</b> we
						looked at in the detail image in the last section? What about the
						<b>t</b>s and <b>e</b>s? How about the general
						proportions of the letters?
					</p>
				</span>
				<p>&nbsp;</p>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>