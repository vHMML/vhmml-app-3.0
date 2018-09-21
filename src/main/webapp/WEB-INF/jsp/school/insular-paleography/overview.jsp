<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Historical Overview" />
	<tiles:putAttribute name="nextSection" value="insular" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>&#8220;Insular&#8221; is the term used to describe the
					manuscript culture of the British Isles in the early Middle Ages,
					and of monastic houses founded by the Irish and Anglo-Saxons on the
					Continent in the same period. The term &#8220;Insular&#8221; is
					sometimes restricted to the period before the Viking attacks
					that began in the late eighth century, when Ireland and Anglo-Saxon
					England developed a shared monastic and artistic culture. However,
					for the purposes of understanding broad categories of scripts, it
					is useful to understand the scripts of England and Ireland in the
					tenth and eleventh centuries as developments of the same pre-Viking
					book culture. The scripts of the British Isles continue to share
					distinctive letterforms and abbreviations until the advent of
					international Gothic book culture in the high Middle Ages.</p>

				<p>Both Ireland (with Irish parts of southwest Scotland) and
					England received the Latin script and the Latin language with
					conversion to Christianity. The scripts developed in each country
					reflect the range of manuscripts the Irish and English would have
					seen in the early decades of their acquisition of Christian
					culture. Ireland had not been part of the Roman empire, but was
					converted in the fifth century from Britain, which had a long
					history of Roman administration. We can deduce from later
					developments in Irish script and from what we know of book
					production and learned culture in the sub-Roman world of the fifth
					and sixth centuries that the Irish encountered both Christian books
					in Half-Uncial script, probably from the Continent, and Later Roman
					Cursive together with an ancient system of abbreviations, most
					likely directly from sub-Roman Britain. From these sources, the
					Irish developed a distinctive, high-grade <%-- majuscule--%> form of
					Half-Uncial, as well as a minuscule bookhand that shows Half-Uncial
					as well as Later Roman Cursive influences. We have surviving
					manuscripts in these scripts beginning in the 7th century.</p>

				<hr />

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Irish Scripts</h4>
				<div class="row">
					<div class="col-md-6 col-lg-6 lesson-image">
						<p class="imageTitle">Irish Minuscule, ca. 700</p>
						<div id="openseadragon1"
							style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							var viewer = OpenSeadragon({
								id : "openseadragon1",
								prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel : "1", // normally defaults to 0
								minZoomLevel : "0.8",
								maxZoomLevel : "10",
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/schaffhausen-stadtbibliothek-gen1p2/GeneratedImages/dzc_output.xml"
							});
						</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/schaffhausen-stadtbibliothek-gen1p2/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from Schaffhausen, Stadtbibliothek, 8th century">
						</noscript>
						<small><em>Schaffhausen, Stadtbibliothek, Gen. 1, p.
								2. (<a href="http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>)
						</em></small>
					</div>

					<div class="col-md-6 col-lg-6 lesson-image">
						<p class="imageTitle">Insular Half-Uncial, 8th century</p>
						<div id="openseadragon2"
							style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							var viewer = OpenSeadragon({
								id : "openseadragon2",
								prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel : "1",
								minZoomLevel : "0.8",
								maxZoomLevel : "10",
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51-8/GeneratedImages/dzc_output.xml"
							});
						</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51-8/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from St. Gallen, Stiftsbibliothek, Cod. Sang. 700 CE">
						</noscript>
						<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
								51, p. 8. (<a href="http://www.e-codices.unifr.ch"
								target="_blank">www.e&#8209;codices.unifr.ch</a>) 
						</em></small>
					</div>
				</div>
		
				<p>The areas of Britain that became England, meanwhile, were
					settled from the fifth century by pagan Germanic tribes who, once
					they were settled in Britain, came to be known as the Anglo-Saxons.
					The Romano-British tradition of Christian Latin culture was
					entirely severed with the Germanic invasions, and the Anglo-Saxons
					had to be converted afresh. The reintroduction of Christianity to
					what was now Anglo-Saxon England came from two directions, with two
					different script traditions. Irish monks based at Iona founded
					monasteries across the north of England, notably at Lindisfarne,
					and in these places the majuscule and minuscule scripts developed
					by the Irish were practiced and further developed, together with a
					hybrid Celtic-Germanic style of decoration. At the same time,
					certain ecclesiastical centers in England had particularly close
					ties with Rome and imitated Roman Uncial books. The center of Roman
					influence in the south of England was Canterbury, seat of
					Augustine, the first Archbishop of Canterbury, who was sent by the
					pope to convert the Anglo-Saxons at the end of the sixth century,
					and his successors. In northern England at the turn of the eighth
					century, the abbot of the twin monastic foundation of Wearmouth and
					Jarrow sought out Roman models for the book arts. These
					Roman-influenced centers produced high-grade Uncial manuscripts in
					the Italian style in the 7th and early 8th centuries, while
					using Insular minuscule as inherited from Ireland for more ordinary
					books.</p>
				<div class="row">
					<div class="col-md-6 col-lg-6 lesson-image">
						<p class="imageTitle">Insular Half-Uncial written in England,
							ca. 700</p>
						<div id="openseadragon3"
							style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							var viewer = OpenSeadragon({
								id : "openseadragon3",
								prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel : "1", // normally defaults to 0
								minZoomLevel : "0.8",
								maxZoomLevel : "10",
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output.xml"
							});
						</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page The British Library, London, England, 700 CE">
						</noscript>
						<small><em>&copy; The British Library Board, Cotton
								Nero D IV, f. 34r.</em></small>
					</div>
					<div class="col-md-6 col-lg-6">
						<p class="imageTitle">Uncials written in England, ca. 700</p>
						<div id="openseadragon4"
							style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
						<script type="text/javascript">
							var viewer = OpenSeadragon({
								id : "openseadragon4",
								prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
								defaultZoomLevel : "1",
								minZoomLevel : "0.8",
								maxZoomLevel : "10",
								zoomPerClick: "1.4", showRotationControl : "true",
								tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/BLAdd89000/GeneratedImages/dzc_output.xml"
							});
						</script>
						<noscript>
							JavaScript needs to be enabled in order to utilize the zoom
							viewer. A static image of the manuscript may be seen: <img
								src="${pageContext.request.contextPath}/static/js/openseadragon/images/BLAdd89000/GeneratedImages/dzc_output_files/9/0_0.jpg"
								alt="manuscript page from The British Library Board, England, 700 CE">
						</noscript>
						<small><em>&copy; The British Library Board, ADD.
								89000, f. 1r.</em></small>
					</div>
				</div>
	
				<p>Broadly speaking, we can distinguish three types of scripts
					used in early medieval Ireland and England:</p>
				<ul>
					<li>a distinctive, high-grade form of Half-Uncial with some
						characteristics of Uncial, which was used in Ireland and in
						centers of Irish cultural influence in England</li>
					<li>Uncials written in England in the 7th and 8th
						centuries in imitation of Italian books</li>
					<li>a minuscule script with many of the letterforms of
						Half-Uncial and some distinctive letterforms and abbreviations not
						used elsewhere.</li>
				</ul>
				<p>Latin writing in the early medieval British Isles shows the
					effects of the fact that both the Irish and the Anglo-Saxons
					learned Latin from books, as an entirely foreign language. Their
					manuscripts consequently contain many more aids to the reader who
					may be struggling to comprehend a foreign language.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>