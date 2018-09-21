<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Carolingian Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Historical Orientation" />
	<tiles:putAttribute name="nextSection" value="carolingian-miniscule" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Caroline Minuscule developed towards the end of the 8th
					century in conjunction with Charlemagne&#8217;s program to reform
					the liturgy and establish a correct and uniform text of the Bible.
					Several monasteries in the Carolingian realms of Northern France
					and Germany had begun developing scripts in the latter half of the
					8th century that sought to bring some clarity and consistency to
					the welter of barely-legible scripts that had developed from
					late-Roman documentary scripts. Under the patronage of Charlemagne
					and the leadership of his circle of scholarly advisors, a consensus
					style of script emerged that was clear, legible, and relatively
					consistent &#8212; Caroline Minuscule.</p>


				<p>In this manuscript the headings are in Square Capitals and
					Uncials and the main text is in Caroline Minuscule.</p>
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
						//defaultZoomLevel: "1", // normally defaults to 0
						minZoomLevel : "0.4",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang317-p9/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen_coddang317_p9/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="St. Gall, Stiftsbibliothek, MS 317, p. 9. St. Gall, 9th century">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						317, p. 9. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>) 
				</em></small> &nbsp;
				<hr />
				<p>We can appreciate the innovation of Carolingian script and
					page layout if we compare a Carolingian manuscript like the one
					above to one from the decades just before the Carolingian reforms.
					During the first three quarters of the 8th century, a number of
					monastic houses, mostly in the northeast of France, developed book
					scripts from Merovingian chancery scripts, which were in turn
					derived from later Roman cursive. These manuscripts typically show
					some of the innovations that would help readers navigate a book,
					like capitals for headings and colored inks marking divisions of
					the text, but their scripts are extremely challenging. There is
					some word separation, but the lateral compression of the script and
					its many ligatures make it hard to discern separate word breaks.
					This 8th-century manuscript gives a sense of what the Carolingian
					reform of script was reacting to:</p>

		<div class="lesson-image">
				<p class="imageTitle">Pre-Caroline Minuscule from Northeast
					France</p>
				<div id="openseadragon2"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.35",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang214-p17/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang214-p17/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="St. Gall, Stiftsbibliothek, MS 214, p. 17">
				</noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
						214, p. 17. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>) 
				</em></small>
			</div>
					
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>Charlemagne&#8217;s circle of scholars included men from
					Italy who had access to libraries, like those of Monte Cassino and
					Verona, where ancient texts were still preserved that survived
					nowhere else in Europe. In the 780s, Alcuin of York arrived at
					Charlemagne&#8217;s court, bringing with him the fruits of a
					century of Insular development of aids to legibility in writing
					Latin. Alcuin and his fellow scholars worked intensively on
					establishing a better text of the Latin Bible as the basis for
					uniform liturgy and preaching. The Carolingian scholars also
					studied late-antique grammars and sought to regularize Latin usage.
					Caroline Minuscule reflects the goals of these studies and reforms:
					its legibility assisted in the accurate dissemination of the
					newly-corrected sacred texts, and its consistent letterforms and
					limited repertory of abbreviations accord with a linguistic ideal
					in which one sound was to be represented by one written form.</p>
				<p>Caroline Minuscule was the dominant script of Europe in the
					9th, 10th, and 11th centuries, before giving way slowly to Gothic
					Textualis in the 12th &#8212; a transition we will study in the
					<a href="${pageContext.request.contextPath}/school/lesson/gothic-textualis-paleography/historical-overview">next unit</a>. More than 7000 manuscripts in Caroline Minuscule survive
					today. Most of the texts of classical antiquity that we know today
					reached the modern period in Carolingian manuscripts. Caroline
					Minuscule was the model for Humanist Minuscule and, therefore, the
					ultimate source of our modern Roman lowercase alphabet.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>