<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Carolingian Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 3: Hierarchy of Scripts" />
	<tiles:putAttribute name="previousSection"
		value="carolingian-miniscule" />
	<tiles:putAttribute name="nextSection" value="exercise" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>The Carolingian period saw the development of a
					widely-observed protocol for using the scripts of antiquity in a
					descending sequence of prestige in major and minor titles and
					headings, with Caroline Minuscule for the main text script. We saw
					the beginnings of this system in Insular manuscripts, but
					Carolingian scribes regularized the process.</p>
				<p>
					Square Capitals, if present, were always at the top of the
					hierarchy, followed by Uncials, Rustic Capitals, and then Caroline
					Minuscule for the main text. Uncial continued to be used for <em>litterae
						notabiliores</em> within the text.
				</p>
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
						//defaultZoomLevel: "1",  normally defaults to 0
						minZoomLevel : "0.4",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang116-p3/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang116-p3/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript from St. Gall, Stiftsbibliothek, MS 116, p. 3.">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						116, p. 3. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
				<p>&nbsp;</p>
				<p>
					On this page from a 9th-century manuscript, the first four lines
					are in Square Capitals; the next two are in Uncial, the three below
					that are in Rustic Capitals, and then the body of the text is in
					Caroline Minuscule. Note that, in addition to the elaborate initial
					<b>P</b> full of eyes, there are <em>litterae notabiliores</em>
					marking minor divisions of the text, an Uncial <b>E</b> five lines
					up from the bottom and an <b>S</b> in the last line. The hierarchy
					in the headings, the prominent initial, and the <em>litterae
						notabiliores</em> combine with the clear word separation to make the
					text easy to navigate.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>