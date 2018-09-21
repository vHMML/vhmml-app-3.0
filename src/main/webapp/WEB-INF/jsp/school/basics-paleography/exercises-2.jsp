<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Review Terms for the Form and Layout of the Manuscript Book" />
	<tiles:putAttribute name="previousSection" value="page-layout" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">Exercise 3: Terms for parts of the
					manuscript book</h4>
				<p>One parchment sheet folded in half to make two leaves is
					called</p>
				<ol class="orderedlistalpha">
					<li>a folio</li>
					<li>a bifolium</li>
					<li>a quire</li>
				</ol>
				<div class="row">
					<div class="col-lg-12">
						<button class="btn left school showAnswer">Display the
							Answer</button>
						<span class="exerciseAnswer">
							<p>
								b. a bifolium
							</p>
						</span>
					</div>
				</div>
				<hr />
				<h4 class="lessonSubheading">Exercise 4: What kind of ruling?</h4>

				<p>Explore the manuscript page below. Can you tell what kind of
					ruling it has?</p>
				<ol class="orderedlistalpha">
					<li>dry-point</li>
					<li>plummet</li>
					<li>ink</li>
				</ol>
			</div>
			<div class="row">
				<div class="col-lg-12 lesson-image">
					&nbsp;
					<div id="openseadragon1"
						style="width: 900px; height: 700px; background-color: #666; border-radius: 1%;"></div>
					<script type="text/javascript">
						var viewer = OpenSeadragon({
							id : "openseadragon1",
							prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
							defaultZoomLevel : "0.5", // normally defaults to 0
							minZoomLevel : "0.5",
							maxZoomLevel : "5",
							zoomPerClick: "1.4", showRotationControl : "true",
							tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w438r/GeneratedImages/dzc_output.xml"
						});
					</script>

					<noscript>
						JavaScript needs to be enabled in order to utilize the zoom
						viewer. A static image of the manuscript may be seen: <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w438r/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="manuscript from Walters, 4">
					</noscript>
					<small><em>Walters Art Museum, W.4, f. 38r. &copy;
							2011 Walters Art Museum, used under a <a
							href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
							target="_blank">CC BY-SA license</a>.
					</em></small>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display the
					Answer</button>
				<span class="exerciseAnswer">
					<p>
						a. dry-point
					</p>
					<hr />
				</span>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<hr />
				<p>If you read Latin and would like to try reading from
					manuscripts in the units that follow, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/basics-transcription/purposes">Transcription
					Basics</a></i> lesson to learn the conventions of representing manuscript
					text in modern form. Otherwise, go directly to the <i><a href="${pageContext.request.contextPath}/school/lesson/classical-antiquity/overview">Classical
					Antiquity Paleography</a></i> lesson to learn about the scripts used in the
					Roman world.</p>
			</div>
		</div>
		<p>&nbsp;</p>

	</tiles:putAttribute>
</tiles:insertTemplate>
