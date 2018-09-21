<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Overview; Branches of Manuscript Study" />
	<%-- <tiles:putAttribute name="sectionDescription" value="OVERVIEW" />--%>
	<tiles:putAttribute name="nextSection" value="scripts-letterforms" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
	 
		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">OVERVIEW</h4>
				<p>This lesson introduces the basic terminology needed to
					describe scripts and letters, and the physical features of the
					pages that carry them. The first goal of this lesson is to explain
					the terms we will use in subsequent lessons to talk about the
					features of scripts, the differences between them, and the
					differences in the ways they are laid out on the manuscript page.</p>

				<p>A secondary goal is to equip you to understand descriptions
					of scripts by scholars in other paleographical handbooks and in
					manuscript descriptions. Paleographers have used and continue to
					use a bewildering variety of terms, sometimes in contradictory and
					inscrutable ways, and scholars of typography have yet another set
					of terms for describing typefaces and printed letters. In this
					course, we aim to teach a limited set of terms that would be
					understood by most Anglo-American scholars who work with
					manuscripts. Once you become familiar with how we use these terms
					to describe scripts and letterforms in this course, you should be
					better equipped to understand other scholars' descriptions of
					scripts, even if their terminology is slightly different.</p><br />
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2", // normally defaults to 0
						minZoomLevel : "0.5",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from St. Gallen 1394">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1394, p. 12. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-11">

				<h4 class="lessonSubheading">BRANCHES OF MANUSCRIPT STUDY</h4>
				<p>
					<b>Paleography</b> is the study of ancient and medieval
					handwriting. More broadly, it encompasses all aspects of the study
					of the manuscript book.
				</p>
				<p>
					<b>Codicology</b> is the study of the physical characteristics of
					the manuscript book, or <b>codex,</b> <i>apart from</i> its script
					and letterforms per se. Some schools of codicology focus on the
					codex as a complete object, while others are more interested in the
					design of the manuscript page, or <b><i>mise en page</i></b> &#8212; the
					French term for page layout.
				</p>
				<p>
					<b>Diplomatic</b> is a special branch of paleography devoted to the
					study of charters &#8212; both their script and their formulaic language.
				</p>
				<p>
					<b>Papyrology</b> is the study of the script and material form of
					documents and texts written on papyrus in the ancient world.
				</p>
				<p>
					This course concentrates on <b>paleography</b> in the sense of the
					history of script, with an emphasis on scripts used in books in
					late antiquity and the Middle Ages. We discuss <b>codicology</b>
					mainly in the sense of page layout, emphasizing changes over time
					in the way script and text are deployed on the page.
				</p>
				<p>The emphasis on the page, as opposed to the three-dimensional
					codex, is because we are preparing you for an encounter with the
					medieval manuscript which is, in the first instance, digital: when
					you use online manuscript collections, you encounter the medieval
					book as a collection of digitized pages. In the lessons that
					follow, you will learn to recognize and describe scripts and
					characteristics of the whole manuscript page, and to associate
					these scripts and page layout features with particular times and
					places from antiquity to the Renaissance.</p>


			</div>
		</div><br />
		<div class="row">
			
			<div class="col-sm-6 col-md-7 col-lg-3 lesson-image">
				 
				<div id="openseadragon2"
					style="width: 265px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "2", // normally defaults to 0
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
						alt="manuscript page from St. Gallen, 1394">
				</noscript>

				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						1394, p. 12. <br />(<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small> 
				<br />
			</div>
			<div class="col-sm-6 col-md-5 col-lg-3 lesson-image">
				<div id="openseadragon3"
					style="width: 265px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "2",
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
						116, p. 3. <br />(<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)</em></small>
						
			</div>
			
			<div class="col-sm-6 col-md-7 col-lg-3 lesson-image" >
				<div id="openseadragon4"
					style="width:  265px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "2",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cologne139/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cologne139/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page from K&ouml;ln, 139">
				</noscript>
				<small><em>K&ouml;ln, Erzbisch&ouml;fliche Di&ouml;zesan- und<br />
						Dombibliothek, Cod. 139, f. 21r. 
				</em></small>
			</div>
			<div class="col-sm-6 col-md-5 col-lg-3 lesson-image">
				<div id="openseadragon5"
					style="width:  265px; height: 400px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "2", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/genevafr0001-2-1r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/genevafr0001-2-1r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Geneva, MS fr. 1/2">
				</noscript>
				<small><em>Geneva, Biblioth&egrave;que de Gen&egrave;ve, MS fr. 1/2,
						f. 1r.<br /> 
					<a href="http://www.e-codices.unifr.ch" target="_blank">(www.e-codices.unifr.ch)</a>
				</em></small>
			</div>
		</div><p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>