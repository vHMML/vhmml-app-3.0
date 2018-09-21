<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 7: Southern Textualis" />
	<tiles:putAttribute name="previousSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					The script whose evolution and characteristics we have been
					studying in this lesson is, strictly speaking, <i>Northern</i>
					Textualis. The Mediterranean countries &#8212; Italy, Spain, and
					southern France &#8212; had a variant form of Textualis that has
					traditionally been known as Rotunda. In Albert Derolez&#8217;s
					taxonomy of scripts, this script is called Southern Textualis.
				</p>
				<!--Image: full width, full page, zoomable: BL Add 34294-->
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<div id="openseadragon1"
					style="width: 900px; height: 800px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1", // normally defaults to 0
						//minZoomLevel : "1",
						maxZoomLevel : "4",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add34294v1f014v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add34294v1f014v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="beautiful manuscript page with decorative border from the British Library">
				</noscript>
				<small><em>&copy; The British Library Board, Add. 34294, f. 14v.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Features of Southern Textualis</h4>
				<p>
					Southern Texualis is <i>like</i> Northern Textualis in its
					repertory of letterforms, including Uncial-style <b>d</b> and <b>s</b>,
					2-shaped <b>r</b> following round letters, and the Tironian <b>et</b>&#59;
					in observing the rule of biting or fusion of opposing bows&#59; in
					having a large minim-height in proportion to ascenders and
					descenders; and in having a marked contrast between thin and thick
					penstrokes.
				</p>
				<p>
					It is <i>unlike</i> Northern Textualis in that its round letters
					are truly round. In Southern Textualis, letters like <b>b</b>, <b>c</b>,
					<b>d</b>, <b>e</b>, <b>o</b>, and <b>p</b> have generous curved
					strokes where Northern Textualis has &#8220;curves&#8221; that are
					actually composed of several straight and angled strokes. Partly as
					a result of this use of generous curves, Southern Textualis is far
					less laterally compressed than Northern Textualis.
				</p>
				<p>Compare a page of Southern Textualis from the late 15th
					century to one in Northern Textualis at a comparable level of
					execution:</p>
			</div>
		</div>
		<!--2 images: side by side: BL Add 34294 (Caption: Southern Textualis) and Cologne 149 (Caption: Northern Textualis). Zoomable. If possible, set a default zoom level that focuses as much as possible on the text area (as opposed to the decorative border) of BL Add 34294, and a comparable amount of text/comparable size of Cologne 149, more or less like this:-->
		<div class="row">
			<div class="col-lg-6 lesson-image">
			<p class="imageTitle">Southern Textualis</p>
				<div id="openseadragon2"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add34294v1f014v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add34294v1f014v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="beautiful manuscript page from the British Library">
				</noscript>
				<small><em>&copy; The British Library Board, Add. 34294, f. 14v.</em></small>
				&nbsp;
			</div>
			<div class="col-lg-6 lesson-image">
			<p class="imageTitle">Northern Textualis</p>
				<div id="openseadragon3"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2",
						minZoomLevel : "0.8",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/koln149_50r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/koln149_50r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Cologne 149">
				</noscript>
				<small><em>K&ouml;ln, Erzbisch&ouml;fliche Di&ouml;zesan- und Dombibliothek, Cod. 149, f. 50r.
				</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					You can see the difference in lateral compression at a glance&#58;
					the Southern Textualis manuscript on the left feels very spacious
					compared to the Northern Textualis manuscript on the right. Then
					compare how <b>o</b> is made in each script. The first letter of
					the Southern example sets the tone, and you will find other
					examples throughout the page&#58; the normal Southern Textualis <b>o</b>
					is constructed of two curved strokes and it reads as quite round.
					Then look at the <b>o</b>s in the Northern example. There is one at
					the beginning of the third line, and you can find other examples.
					The Northern Textualis <b>o</b> is constructed entirely of straight
					lines, and it is much narrower than the Southern Textualis version.
				</p>
				<p>The following details show the similarities and differences
					between the two scripts.</p>
				<p>
					Here is the same word, <b>dei</b>, in both scripts. They both show
					Textualis&#8217;s characteristic &#8220;biting&#8221; of opposing
					bows where the <b>d</b> and the <b>e</b> face each other. Note how
					in the Southern version at left, the bows are really bows &#8212;
					they curve, and the curving strokes overlap &#8212; whereas the
					ostensible curves at right are all made up of straight strokes,
					with one vertical stroke shared between the two letters.
				</p>
				<p>
					Compare the <b>d</b>s, too. Both are the &#8220;Uncial&#8221; <b>d</b>,
					with a stem that leans over to the left (as opposed to the
					Half-Uncial/Caroline <b>d</b>, whose stem is upright). But in
					Southern Textualis, the stem of <b>d</b> leans so far over to the
					left that it is horizontal, and it appears to be part of a
					continuous curve with the rest of the letter. (In fact, the letter
					is made up of at least three strokes.) This <b>d</b> is one of the
					telltale signs of Southern Textualis.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/dei-s.jpg"
					alt=" " width="175"> <b>dei</b>
					<p>&nbsp;</p>
			</div>
			<div class="col-md-6 col-lg-6">
			
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/dei-n.jpg"
					alt=" "> <b>dei</b>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>
					In these words, where <b>p</b> meets <b>o</b> at left, and <b>d</b>
					meets <b>o</b> at right, we see the same difference in how biting
					works in the two scripts.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/pone-s.jpg"
					alt=" " width="175"> <b>pone</b>
				<p>&nbsp;</p>
			</div>
			<div class="col-md-6 col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/domi-n.jpg"
					alt=" "> <b>domi</b>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					On the other hand, in the <b>ea</b> below, you can see how Southern
					Textualis shares angular elements with the Northern version,
					particularly in the use of diagonal hairlines to join parts of
					letters.
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/ea-s.jpg"
					alt=" " width="155"> <b>ea</b>
				<p>&nbsp;</p>
				<p>
					There are several features to note in the Southern Textualis <b>et
						defunctis</b> below. This detail begins with the Tironian <b>et</b>,
					the 7-shaped mark of abbreviation. In Southern Textualis, the
					Tironian <b>et</b> is confined to minim height and its horizontal
					stroke is proportionally broad, in keeping with the proportions of
					the script. Its upright is never crossed, as it generally is in
					later versions of Northern Textualis.
				</p>
				<p>
					In this example, you see again the Southern Textualis version of <b>d</b>
					with the stem leaning way over to the left. At the same time, you
					can see that even though many letters are rounded, minims are still
					straight and parallel, as in the Northern version. You need to look
					closely, count minims, and have a good knowledge of Latin to tell <b>u</b>
					from <b>n</b>, especially when they are sitting next to each other.
				</p>
				<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/et-defunctis-s.jpg"
					alt=" " width="400"> <b>et defunctis</b>
				<p>&nbsp;</p>
				<p>
					Here you see the Southern version of Tironian <b>et</b> again, at
					left, and you can compare the 2-shaped <b>r</b> in both scripts.
					The <b>r</b> itself is virtually identical. The &#8220;round&#8221;
					<b>o</b> that precedes it is genuinely round in the Southern
					version at left, but it is made up of straight lines in the
					Northern version at right.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/et-in-hora-s.jpg"
					alt=" " width="300"> <b>et in hora</b>
					<p>&nbsp;</p>
			</div>
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/glori-n.jpg"
					alt=" "> <b>glori</b>
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Southern Textualis: Dates and
					distribution</h4>
				<p>
					Southern Textualis originates in Italy and was the normal version
					of Textualis in the Mediterranean region, but books in this script
					were also produced elsewhere in Europe. The diffusion of the script
					has a number of different causes. A smaller and less formal version
					of Southern Textualis, known as the <i>littera bononiensis</i>, was
					the normal script of canon law books emanating from the University
					of Bologna, which was the center of canon law studies from the late
					11th century. Those manuscripts were widely distributed across
					Europe, so people in regions where Northern Texualis was normal
					would also have been familiar with Southern Textualis. And in the
					era of printing, typographic versions of Southern Textualis were
					widely used for the same purpose.
				</p>
				<p>The later Middle Ages, especially the 14th to 16th centuries,
					were also the age of professional scribes and private patronage of
					book production. Such an economy of books meant that a particular
					script was far less bound to a particular location than had been
					the case in the age of monastic book production. Southern scribes
					wrote Southern Textualis for northern European patrons, and
					vice-versa.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<h4 class="lessonSubheading">Southern Textualis: Page design</h4>
				<p>Because of the wide range of its dates and geographic
					distribution, as well as the early development of Renaissance art
					in the script&#8217;s Italian homeland, we find Southern Textualis
					in manuscripts of every decorative style of the later Middle Ages.
					The manuscript we have been looking at above has an entirely
					Renaissance-style, classicizing frame, which we might expect to
					accompany the Humanist scripts we will study at the end of this
					course. But canon law books in Southern Textualis come with page
					layouts that resemble the complex, text-dense pages of the glossed
					biblical manuscripts we looked at earlier in this lesson. You could
					identify them as Gothic from across the room. Southern Textualis is
					also used, with musical notation, in many of the giant choirbooks
					that survive from late medieval and Renaissance Spain and Italy.
					These are the kinds of books in which you are most likely to see
					Southern Textualis in North American collections.</p>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<hr />
				<p>
					If you read Latin and would like to try deciphering some
					manuscripts in Textualis, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/gothic-transcription/gothic-trans-intro">Gothic Textualis
						Transcription</a></i> lesson. Otherwise, go ahead to the <i><a href="${pageContext.request.contextPath}/school/lesson/visigothic-paleography/visigothic-intro">Visigothic
						and Beneventan Paleography</a></i> lesson to learn about other scripts
					used in Spain and Italy.

				</p>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>