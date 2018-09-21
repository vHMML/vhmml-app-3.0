<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 3: Uncial in Anglo-Saxon England" />
	<tiles:putAttribute name="previousSection" value="insular" />
	<tiles:putAttribute name="nextSection" value="exercise" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>Centers in Anglo-Saxon England that received Christian book
					culture directly from Rome, rather than filtered through Irish
					missionaries, imitated the high-grade Christian books in Uncials
					that the Roman missionaries brought with them. The books these
					Anglo-Saxons used as models would have resembled the sixth-century
					Italian Uncial manuscripts we looked at in the Christian Late
					Antiquity unit, like these, both written around the year 600:</p>
				<div class="row">
					<div class="col-md-6 col-lg-6 lesson-image">
						<p class="imageTitle">Uncials written in Italy, ca. 600</p>
						<div id="openseadragon1"
							style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							    var viewer = OpenSeadragon({
							        id: "openseadragon1",
							        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
									defaultZoomLevel: "1", // normally defaults to 0
									minZoomLevel: "0.7",
									maxZoomLevel: "10",
									zoomPerClick: "1.4", showRotationControl : "true",
									tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bavpallat210/GeneratedImages/dzc_output.xml"
							    });
							</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/bavpallat210/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from Vatican City, Italy, ca. 600">
						</noscript>
						<small><em>&copy; Bibliotheca Apostolica Vaticana,
								Pal. lat. 210, f. 4r.</em></small>
					</div>
					<div class="col-md-6 col-lg-6 lesson-image">
						<p class="imageTitle">Uncials written in Italy, ca. 600</p>
						<div id="openseadragon2"
							style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
						    var viewer = OpenSeadragon({
						        id: "openseadragon2",
						        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel: "1",
								minZoomLevel: "0.8",
								maxZoomLevel: "10", 
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bodleianmsd2_14_130r/GeneratedImages/dzc_output.xml"
						    });
						</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/bodleianmsd2_14_130r/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from Italy, circa 600">
						</noscript>
						<small><em>The Bodleian Libraries, The University of
								Oxford, Auct. D. 2. 14, f. 130r.</em></small>
					</div>
					<p>&nbsp;</p>
					<p>In imitation of these Italian books, Anglo-Saxon scribes
						created Uncial Gospel books which in some cases so closely
						resemble their models that they were mistaken for Italian books
						well into the modern era. This one, the St. Cuthbert Gospel, was
						written at the end of the 7th century, probably in
						Wearmouth-Jarrow, the Roman-oriented center on the northeastern
						coast of England:</p>
					<div class="row">
						<div class="col-lg-12 lesson-image">
							<p class="imageTitle">Northumbria, 698 CE</p>
							<div id="openseadragon3"
								style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
							<script type="text/javascript">
								    var viewer = OpenSeadragon({
								        id: "openseadragon3",
								        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
										defaultZoomLevel: "1", // normally defaults to 0
										minZoomLevel: "0.35",
										maxZoomLevel: "6",
										zoomPerClick: "1.4", showRotationControl : "true",
										tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/BLAdd89000/GeneratedImages/dzc_output.xml"
									});
								</script>
							<noscript>
								JavaScript needs to be enabled in order to utilize the zoom
								viewer. A static image of the manuscript may be seen: <img
									src="${pageContext.request.contextPath}/static/js/openseadragon/images/BLAdd89000/GeneratedImages/dzc_output_files/9/0_0.jpg"
									alt="manuscript page, circa 700">
							</noscript>
							<small><em>&copy; The British Library Board, Add.
									89000, f. 1r.</em></small>
						</div>
					</div>
					
					<p>All the guidelines for identifying and dating Uncials that
						we studied in the unit on Christian Late Antiquity apply to Uncial
						manuscripts created in England. The telltale difference is that
						manuscripts written in England have much more advanced
						word separation.</p>
					<hr />
					<p>&nbsp;</p>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>