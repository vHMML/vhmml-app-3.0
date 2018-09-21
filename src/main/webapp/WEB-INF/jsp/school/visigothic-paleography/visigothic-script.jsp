<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Visigothic and Beneventan: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Visigothic Script" />
	<tiles:putAttribute name="previousSection" value="visigothic-intro" />
	<tiles:putAttribute name="nextSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p class="imageTitle">Eight lines of Visigothic Minuscule, 1091-1109 CE,
					&#8220;The Silos Apocalypse&#8221;</p>
				<%--<div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // normally defaults to 0
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add11695f194r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add11695f194r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript showing Visigothic minuscule from bottom eight lines of column A">
				</noscript>
				 --%>
				 <img
						src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/BL_add11695f194r_cropped8linesbottomleft.jpg" width="900"
						alt="Visigothic Minuscule – bottom eight lines of column A of manuscript">
				<br /><small><em>&copy; The British Library Board, Add.
						11695, f. 194ra. ll. 24-31.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>The &#8220;Visigothic&#8221; script has nothing to do with
					the Visigoths, except that it arose in Spain, which had been ruled
					by the Visigoths in previous centuries. The script we call
					Visigothic emerged in recognizable form in the 8th century, a
					development of the local version of Later Roman Cursive with some
					influence from Half-Uncial and, indirectly, Uncial. Visigothic
					continued to be written until at least the 13th century, though it
					was to a great extent replaced by Caroline Minuscule by the late
					11th century. The imposition of a new liturgy at that time, as part
					of a regularization of the liturgy under Pope Gregory VII, was
					decisive in bringing Spain into the mainstream of European script,
					especially because the new liturgy was disseminated in books
					written in Caroline Minuscule. But that did not entirely end the
					practice of Visigothic script.</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Recognizing Visigothic Script</h4>
				<p>
					<b>Aspect</b>: Visigothic script has much in common in general
					appearance with other early medieval minuscules we have studied. It
					typically has a small minim-height and long, very vertical
					ascenders and descenders. Indeed, a 10th-century Visigothic
					manuscript at first glance is not all that different in aspect from
					a contemporary Carolingian manuscript, and it has an even closer
					resemblance to an Anglo-Saxon manuscript from the same period, even
					though the two scripts are quite independent in development. Here
					is the same 10th-century Visigothic manuscript depicted above, next
					to the 10th-century Anglo-Saxon manuscript we looked at in the
					Insular lesson:
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Visigothic Script, 10th century</p>
				<div id="openseadragon2"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // normally defaults to 0
						minZoomLevel : "0.6",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add11695f194r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add11695f194r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from British Library showing Visigothic script">
				</noscript>
				<small><em>&copy; The British Library Board, Add.
						11695, f. 194r.</em></small>

			</div>
			<div class="col-lg-6 lesson-image">
				<p class="imageTitle">Anglo-Saxon Minuscule, 10th century</p>
				<div id="openseadragon3"
					style="width: 450px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bodleian_junius27_66r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bodleian_junius27_66r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page showing Anglo-Saxon minuscule script">
				</noscript>
				<small><em>The Bodleian Libraries, The University of Oxford, Junius 27, f. 66r.
</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Letterforms</h4>
				<p>Visigothic uses some special forms of ligatures and
					individual letters in certain places in words, to represent
					particular pronunciations as well as for aesthetic effect.</p>
				<p>
					<b>I-longa</b>: Visigothic uses a tall <b>i</b> (<b>I</b>) at the
					beginning of words, and also between vowels, where it has the value
					of a semiconsonant (&#8220;<b>y</b>&#8221; or IPA <b>j</b>). You
					can see the latter use in <b>eius</b>, the last word in the first
					column of the manuscript at the head of this section:
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/eius.jpg"
					alt="several characters from manuscript in Visigothic showing characters E I U S"> <b>eius</b>
				<p>&nbsp;</p>
				<small><em>Details above and below from last four lines from column A, &copy; The British Library Board, Add.
						11695, f. 194ra. ll. 28-31.</em></small>
						<p>&nbsp;</p>
				<p>
					<b>Ligatures</b>: Visigothic script uses two ligatures for <b>ti</b>
					depending on how they are pronounced in the local version of Latin.
					<b>T</b> joined to an <b>i</b> that descends below the baseline,
					like a <b>j</b>, is used when the <b>t</b> is
					&#8220;assibilated&#8221; &#8212; softened to an <b>s</b>-like
					sound. <b>T</b> joined to a normal <b>i</b> it used when the <b>t</b>
					is &#8220;hard.&#8221; You can see the ligature for assibilated <b>t</b>
					here, in the word <b>dicentium</b> (pronounced <i>dicensium</i>).
					The last two letters, which will be easy to pick out, are <b>um</b>.
					The complex form just before that is a <b>t</b> whose crossbar
					curves around like a <b>c</b> on the left and reaches out to join a
					<b>j</b>-like <b>i</b> on the right:
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/dicentium.jpg"
					alt="one word cropped from manuscript in Visigothic: dicentium"> <b>dicentium</b>
				<p>
					You can also see in the detail above, in the fourth and fifth
					letters of <b>dicentium</b>, that <b>e</b> tends to be tall and to
					join the letter that follows it in ligature. This is a feature
					common to many of the early medieval minuscules.
				</p>
				<p>&nbsp;</p>
				<p>
					<b>The Visigothic G</b>: In order to identify Visigothic
					decisively, one needs to pay attention to the letter <b>g</b>. The
					Visigothic <b>g</b> is utterly distinctive. It looks like a letter
					<b>c</b> with a very long tail coming down from the right side.
					(This is ultimately a descendant of Uncial <b>g</b>.) Observe the <b>g</b>s
					in the following words:
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/glorificemus.jpg"
					alt="one word cropped from manuscript in Visigothic: glorificemus"> <b>glorificemus</b>
				<p>&nbsp;</p>
			</div>
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/gaudeamus.jpg"
					alt="word cropped from Visigothic manuscript: gaudeamus"> <b>gaudeamus</b>
			</div>
		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/regnauit.jpg"
					alt="word cropped from Visigothic manuscript:  regnauit"> <b>regnauit</b>
				<p>&nbsp;</p>
			</div>
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/magnorum.jpg"
					alt="word cropped from Visigothic manuscript: magnorum"> <b>magnorum</b>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
			<p>
				Compare the Visigothic <b>g</b> in the details above to the Insular <b>g</b>
				in the Anglo-Saxon manuscript:
			</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/gentibus.jpg"
					alt="word cropped from Visigothic manuscript: gentibus"> <b>gentibus</b>
				<p>&nbsp;</p>
			</div>
			<div class="col-lg-6">
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/diriges.jpg"
					alt="word cropped from Visigothic manuscript: diriges"> <b>diriges</b><br />
			
				<small><em>Preceding details from the Bodleian Libraries, The University of Oxford, Junius 27, f. 66r.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					The Insular <b>g</b> is much closer to the Half-Uncial <b>g</b> and
					resembles an elongated number <b>5</b>.
				
					(Note also that the Visigothic <b>glorificemus</b> and <b>gaudeamus</b>
					and the Insular <b>gentibus</b> and <b>diriges</b> all have a tall
					<b>e</b> in ligature with the letter that follows.)
				</p>
				</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					Now compare both of those <b>g</b> styles to the Caroline <b>g</b>,
					which has an upper and a lower bow joined by a long stroke on the
					right side of the letter.
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/intellegentie.jpg"
					alt="word cropped from Visigothic manuscript: intellegentie"> <b>intellegenti&#281;</b>
					<br /><small><em>Detail above from St. Gallen, Stiftsbibliothek, Cod. Sang. 116, p. 3. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
					</em></small>
				<p>&nbsp;</p>
				<p>
					<b>G</b> is very often a telltale letter for a given script, and it
					can also be helpful to observe <b>g</b>s when trying to tell one
					scribe from another. This is a situation where the concept of <i>ductus</i>
					is particularly helpful. In addition to noting what the <b>g</b> <i>looks</i>
					like, pay attention to how it is formed and how many strokes seem
					to be involved. Try imitating on a piece of paper the various forms
					of <b>g</b> shown here and see if that helps understand how they
					are constructed, and how they differ from one another.
				</p>
				<p>&nbsp;</p>
				<p>
					Are you ready to try telling Visigothic from other early medieval
					minuscules on the basis of the <b>g</b>? Click ahead to try an
					exercise.
				</p>
			</div>
			<p>&nbsp;</p>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>