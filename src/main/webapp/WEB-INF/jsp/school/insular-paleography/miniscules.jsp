<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 5: Insular Minuscules" />
	<tiles:putAttribute name="previousSection" value="exercise" />
	<tiles:putAttribute name="nextSection" value="layout" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>The class of Insular script with the longest history, the
					widest range of uses, and the most varieties, is Insular minuscule.
					Insular minuscule developed in the seventh century in Ireland and
					over the succeeding centuries was taken over by the Anglo-Saxons
					for books below the grade of the great luxury biblical and
					liturgical books that were written in Uncial or Insular
					Half-Uncial. Insular minuscule was used in Ireland for both Latin
					and Irish-language texts until the end of the Middle Ages. In
					England, it was used for both Latin and Old English texts through
					the early tenth century, and thereafter for the vernacular only,
					until the Norman Conquest.</p>
				<p>This manuscript of the Life of St. Columba by Adomnan was
					written around the year 700 in Iona, the center from which Irish
					monastic culture was spread to England in the seventh and eighth
					centuries. It exemplifies the early Irish version of Insular
					minuscule.</p>
				<p class="imageTitle">Written in Iona between 688 and 713</p>
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.4",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/schaffhausen-stadtbibliothek-gen1p2/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/schaffhausen-stadtbibliothek-gen1p2/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Schaffhausen, Stadtbibliothek">
				</noscript>
				<small><em>Schaffhausen, Stadtbibliothek, Gen. 1, p. 2.
						(<a href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
				
				<p>
					The alphabet is recognizably a descendant of late-antique
					Half-Uncial and shares the typical Insular letterforms we saw in
					Insular Half-Uncial. Note the <b>d</b> with upright ascender and
					bow not quite closed, so it might be mistaken for <b>cl</b>, and
					the minuscule forms of <b>n</b> and <b>a</b>. The <b>g</b> is the
					same Half-Uncial form seen both in early Half-Uncials and in the
					majuscule form of Half-Uncial used in the great Insular Bible
					manuscripts like Lindisfarne. Note the <b>f</b> with low-shouldered
					hasta and the <b>r</b> whose shoulder bends almost down to the
					baseline, so that it resembles an <b>n</b>.
				</p>

				<img
					src="${pageContext.request.contextPath}/static/img/school/insular-paleography/stadtbib_gen_1pg2-1.jpg"
					alt="segment of two words from insular manuscript"> <small><b>prouidentia
						credi</b></small>
				<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/insular-paleography/stadtbib_gen_1pg2-2.jpg"
					alt="two words from insular manuscript"> <small><b>grecitas
						uero</b></small>
				<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/insular-paleography/stadtbib_gen_1pg2-3.jpg"
					alt="clip from insular manuscript with two words"> <small><b>et
						fundator</b></small>

				<p>
					Note also the wedge-shaped finials on upright strokes, especially
					of <b>d</b>, <b>p</b>, and <b>r</b>. These wedges are typical of
					both Insular majuscule and Insular minuscule. In succeeding
					centuries in both England and Ireland, this script became more
					clearly minuscule and developed a pointed aspect, as both ascenders
					and descenders grew longer. Notably, <b>f</b>, <b>r</b>, and <b>s</b>
					acquired long, pointed descenders.
				</p>
				<p>
					This manuscript is a Psalter with Old English glosses from the
					second quarter of the tenth century. An Anglo-Saxon form of Insular
					minuscule is used both for the main text, in Latin, and in a
					smaller version for the vernacular glosses between the lines. If
					you cast your eye over the page, you will see many long, spiky
					descenders hanging down from each line. These are the <b>f</b>s, <b>r</b>s,
					and <b>s</b>s.
				</p>
			
				<p class="imageTitle">Anglo-Saxon Minuscule, first quarter of
					the 10th century</p>
				<div id="openseadragon5"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.4",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/msjunius27f_66r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/msjunius27f_66r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Bodleian Library, The University of Oxford, ca. 10th century">
				</noscript>
				<small><em>The Bodleian Libraries, The University of
						Oxford, Junius 27, f. 66r.</em></small>
			
				<p>Because of its exaggerated descenders and finer penwork, this
					script may seem far removed from that of the Iona manuscript of
					more than two centuries earlier. If you look at the letterforms,
					however, you will see the persistence of the typical Insular forms.</p>
				<p>
					In these details, we can compare Insular <b>r</b> and <b>s</b>. The
					<b>s</b> basically has the same form as Half-Uncial tall <b>s</b>,
					but instead of sitting on the baseline, it has a long descender and
					its shoulder stays at minim-height. The <b>r</b> has the same long
					descender, but its shoulder bends over and comes all the way down
					to the baseline, so that without its descender it would resemble an
					<b>n</b>:
				</p>
				<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/insular-paleography/bodleian_ms_junius_27_66r-1.jpg"
					alt=""> <small><b>misereatur</b></small>
				<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/insular-paleography/bodleian_ms_junius_27_66r-2.jpg"
					alt=""> <small><b>supernos</b></small>
				<p>&nbsp;</p>
				<p>
					The <b>f</b> also has a long descender, as in Insular Half-Uncial,
					with the low cross-bar. This detail shows <b>f</b>, <b>s</b>, and <b>r</b>
					in close proximity:
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/insular-paleography/bodleian_ms_junius_27_66r-3.jpg"
					alt=""> <small><b>fines terr&#230;</b></small>
				<p>&nbsp;</p>
				<p>
					The details above shows how a grouping of long-tailed <b>f</b>s, <b>r</b>s,
					and <b>s</b>s, plus other letters with descenders like <b>p</b>,
					contribute to the vertical and somewhat spiky aspect of a page of
					developed Insular minuscule.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>