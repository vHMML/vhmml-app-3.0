<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Classical Antiquity: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Roman Cursives" />
	<tiles:putAttribute name="previousSection" value="overview" />
	<tiles:putAttribute name="nextSection" value="square-capitals" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					<b>Older Roman Cursive</b> (a.k.a. Ancient Roman Cursive)
					was in use from at least the first century BCE &#8212; probably
					significantly earlier &#8212; through the third century CE. In 367 CE,
					its use was restricted by decree to the imperial chancery, after
					which Later Roman Cursive succeeded it as the everyday script of
					the later Roman Empire. Despite its name, Older Roman Cursive
					wouldn't immediately strike us as "cursive" &#8212; perhaps not even in
					the technical sense of being written with few lifts of the pen.
					Older Roman Cursive is called "cursive" because of the impression
					it gives of being hastily written. It is constructed mostly of
					individual angular strokes, and has something of the appearance of
					hen-scratches. In fact, the Roman comic playwright Plautus has a
					character say, "Surely a hen wrote these letters."
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
						defaultZoomLevel : "1", 
						minZoomLevel : "0.4",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blpapyri229/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blpapyri229/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="The British Library Board, London, Papyri 229">
				</noscript>
				<small><em>&copy; The British Library Board, Papyrus
						229.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>
					Note that Older Roman Cursive is classified as a <b>majuscule</b>
					script: despite the irregular appearance of the lines of writing,
					the letters are generally the same size as each other, with few
					ascenders or descenders.
				</p>

				<p>
					<b>Later Roman Cursive</b> (a.k.a. New Roman Cursive), on
					the other hand, is recognizably both cursive and <b>minuscule</b>.
					It is the ultimate ancestor of all subsequent medieval minuscules
					and, therefore, of our own lower-case alphabet, so its forms are
					familiar. Ascenders have loops; <b>b</b> looks like the modern lower case <b>b</b>,
					whereas in Older Roman Cursive it faced backwards, like a <b>d</b>. The <b>g</b> has assumed the minuscule form that will persist through most
					medieval scripts. The aspect is, in general, upright and loopy. Later
					Roman Cursive is often not at all easy to read, but once you pick
					out the individual letterforms, you will realize you are on
					familiar turf.
				</p>
				</div>
				</div>
				<div class="row">
			<div class="col-lg-12 lesson-image">
					<p>&nbsp; </p>
					<%---<p>
						View an example of Later Roman Cursive from the <a
							href="http://www.lib.umich.edu/papyrus-collection"
							target="_blank">University of Michigan's Papyrology
							Collection</a>.
					</p>  --%>
					<a href="http://quod.lib.umich.edu/a/apis/x-2183/4295r.tif"
						target="_blank"><img
						src="${pageContext.request.contextPath}/static/img/school/classical-antiquity/apis4295r1038_890.jpg"
						width="900"
						alt=" partially deteriorated bilingual  Greek and Latin document of uncertain nature, P.Mich.inv. 4295"></a>
					<br />
					<small><em>P.Mich.inv. 4295r.</em> Image digitally
						reproduced with the permission of the <a
						href="http://www.lib.umich.edu/papyrology-collection"
						target="_blank">Papyrology Collection, Graduate Library,
							University of Michigan</a></small>
				</div>
				</div>
				<div class="row">
			<div class="col-lg-12">
				<p>Later Roman Cursive was the administrative script of the
					later Roman Empire, and as such it formed the basis for subsequent
					scripts in the successor states to Rome all over Europe. (More
					about this in subsequent lessons.) It was used from the third
					century through the fifth century, and persisted in various forms
					into the seventh, by which point it had evolved into distinct local
					scripts associated with various early medieval kingdoms and
					monastic centers.</p>

				<p>
					<b>Papyrus</b>: Notice that these examples of ancient
					cursive scripts are written on papyrus, which was the normal
					writing support for books in the ancient Mediterranean world. We
					discussed the characteristics of papyrus in the <a href="${pageContext.request.contextPath}/school/lesson/basics-paleography/papyrus"><i>Paleography Basics</i></a>
					lesson. In the next lesson, on <a href="${pageContext.request.contextPath}/school/lesson/christian-late-antiquity/intro"><i>Christian Late Antiquity</i></a>, we will
					discuss the transition from the papyrus roll (<i>volumen</i>) to
					the parchment codex in late antiquity.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>