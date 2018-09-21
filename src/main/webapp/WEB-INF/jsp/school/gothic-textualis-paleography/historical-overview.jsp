<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1:  Historical Overview" />
	<tiles:putAttribute name="nextSection" value="transition-caroline" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>In the course of the twelfth century, a cluster of changes in
					the proportions and ductus of Caroline Minuscule gradually
					transforms the script into Gothic Textualis, the script popularly
					known as &#8220;blackletter.&#8221; The changes in script go along
					with a group of changes in page layout, some of which are aesthetic
					and some functional.</p>

			</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-4  lesson-image">
					<p class="imageTitle">9th-century Carolingian manuscript</p>
					<div id="openseadragon1"
						style="width: 300px; height: 500px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon1",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "1",
							minZoomLevel : "0.8",
							maxZoomLevel : "10",
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang152-p3/GeneratedImages/dzc_output.xml"
						});
					</script>

					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang152-p3/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript page from St. Gallen 152">
					</noscript>
					<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
							152, p. 1.<br />(<a href="http://www.e-codices.unifr.ch"
							target="_blank">www.e&#8209;codices.unifr.ch</a>) 
					</em></small>
				</div>
			

				<div class="col-sm-6  col-md-4 col-lg-4  lesson-image">
					<p class="imageTitle">Early-12th century Protogothic manuscript</p>
					<div id="openseadragon2"
						style="width: 300px; height: 500px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon2",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "1",
							minZoomLevel : "0.8",
							maxZoomLevel : "10",
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v/GeneratedImages/dzc_output.xml"
						});
					</script>
					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript page from Walters 18">
					</noscript>
					<small><em>Walters Art Museum, W.18, f. 11v.<br />&copy;
							2011 Walters Art Museum,<br />used under a <a
							href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
							target="_blank">CC BY-SA license</a>.
					</em></small>
				</div>
				
				<div class="col-sm-6 col-md-3 col-lg-4 lesson-image">
					<p class="imageTitle">Late-13th/early-14th century Gothic
						manuscript</p>
					<div id="openseadragon3"
						style="width: 300px; height: 500px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon3",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "1",
							minZoomLevel : "0.8",
							maxZoomLevel : "10",
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary_0007r/GeneratedImages/dzc_output.xml"
						});
					</script>
					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/bethune_breviary_0007r/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript page from Bethune Breviary">
					</noscript>
					<small><em>HMML, Bethune Breviary, MS 2, f. 7r.<br />Used
							under a <a href="https://creativecommons.org/licenses/by-nc/4.0/"
							target="_blank">CC BY-NC 4.0 license</a>.
					</em></small>
				</div>
			</div>
	
			<div class="row">
				<div class="col-lg-11">
					<p>&#8220;Textualis&#8221; means, simply,
						&#8220;bookish.&#8221; It is the term applied by modern
						paleographers to the dense, angular script used in the common book
						culture of northwestern Europe from the twelfth century to the end
						of the Middle Ages and beyond. We call it &#8220;Gothic&#8221; by
						tradition and because of its association with the broader 
						developments in art and design known to modern scholars as Gothic.</p>
					<p>The period of the emergence of Textualis is the period of
						the rise of the universities, beginning in the first half of the
						twelfth century, when book production moved, at least in part,
						from the monasteries to professional scribes and booksellers
						serving the needs of university scholars. Books increased both in
						kind and in sheer numbers in this period. Textualis is found in
						many different grades in books with many different kinds of
						layouts, according to the demands of the texts and commentaries
						they contained, and the needs of the ever-increasing population of
						readers.</p>
					<p>
						In this lesson, we examine the letterforms and layout features
						that mark the transition from the Carolingian to the Gothic book
						aesthetic and identify the features common to fully-developed
						Gothic Textualis. <i>[Note: To read more about the many
							varieties of Textualis as practiced in the High Middle Ages
							and to learn how they are classified, see Albert Derolez, </i>The
							Palaeography of Gothic Manuscript Books<i> (Cambridge: Cambridge University
							Press, 2006).]</i>
					</p>

					<p>&nbsp;</p>
				</div>
			</div>
	</tiles:putAttribute>
</tiles:insertTemplate>