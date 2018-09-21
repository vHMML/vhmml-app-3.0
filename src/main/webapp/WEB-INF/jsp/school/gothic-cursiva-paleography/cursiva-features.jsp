<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Cursiva: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Cursiva Features" />
	<tiles:putAttribute name="previousSection" value="cursiva-overview" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Key identifying features</h4>
				<p>
					The identifying features of Cursiva are a single-story <b>a</b>&#59;
					loops on the ascenders of <b>b h k l</b>&#59; and descenders on <b>f</b>
					and the straight or long (formerly &#8220;tall&#8221;) version of <b>s</b>.
				</p>
				<h4 class="lessonSubheading">Influence of documentary cursives
					and Textualis</h4>
				<p>The looped ascenders are a product of the origin of these
					scripts in documentary cursives, where loops are part of a ductus
					that joins letters to one another (in the manner of the modern
					cursive or &#8220;joined up&#8221; writing). In Cursiva, the loops
					may serve a real function, or they may be purely decorative. In
					general, Cursiva reduces the number of ligatures used in
					documentary cursives, and the more formal the Cursiva, the more
					likely that the loops are decorative and do not serve to link one
					letter to another.</p>
				<p>
					Cursiva was always under the influence of Textualis. Scribes who
					wrote one also wrote the other, and could write several varieties
					of either script. Textualis was often used for headings in
					manuscripts whose main text was in Cursiva, rather in the way that
					Uncial was used in the early Middle Ages as headers for texts in
					minuscule. We see the influence of Textualis on the earliest and
					latest varieties of Cursiva. In the earliest Cursiva of England,
					known as Anglicana, a two-story <b>a</b> was normal &#8212; but
					since loops on ascenders and <b>f</b> and <b>s</b> with descenders
					were present, we still call Anglicana a variety of Cursiva. On the
					other end of the period, the most formal 15th-century varieties of
					Cursiva tend to show a greater influence of Textualis in ductus
					(with letters made of many more separate strokes) and in lateral
					compression. Readers should be prepared to see a great range of
					scribal practice within this class of script.
				</p>

				<h4 class="lessonSubheading">Aspect</h4>
				<p>The aspect of Cursiva can vary a great deal with the level of
					formality and from variety to variety, but there are some
					constants. Compared to Textualis, Cursiva generally has little
					lateral compression, a smaller proportional minim-height (and hence
					more space between the lines). Because of the loops and descenders,
					it tends to appear both loopy and pointy. Some Cursivas are
					markedly vertical and others are characterized by competing
					diagonal strokes.</p>
				<p>Let us see what these features look like in some manuscript
					examples.</p>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-cursiva-paleography/blharley866f017r_cropped.jpg"
					alt="manuscript page from The British Library showing both cursive and cursiva"> <br />
				<small><em>&copy; The British Library Board, Harley
						866, f. 17r.</em></small>
			

				<p>
					The manuscript above is an English copy of Alain de Lille&#8217;s <i>De
						planctu naturae</i>. The script is quite informal, and is both
					cursive, in the sense of being written with few lifts of the pen,
					and Cursiva, because it has (mostly) single-story <b>a</b>, looped
					ascenders, and <b>f</b> and <b>s</b> with long descenders. Even if
					you can&#8217;t read the script, which is very challenging even if
					you read Latin, you can see the loops and the long, pointy
					descenders, which contribute to the script&#8217;s aspect.
				</p>
				
				</div>
				 </div>
			<div class="row">
			<div class="col-lg-12 lesson-image">	 
				<img src="${pageContext.request.contextPath}/static/img/school/gothic-cursiva-paleography/blharley866f017r_cropped2lines.jpg"
					alt="detail of three lines from the Harley 866 manuscript above"
					width="900">
	
			
				<p>The lines above read:<br />
					<b>&#91;I&#93;N lac(ri)mas risus in luctus gaudia verto<br />
					In planctu(m) plausus in lac(ri)mosa iocos.</b>
				</p>
				<p>
					Try matching up the letters in the transcription to those in the
					image. (The first line appears to start with a big <b>N</b>,
					because the <b>I</b> of the word <b>IN</b> is in fact the large red
					and blue initial that you can see in the larger image above.)
				</p>
				<p>
					<b>S</b> is long in the middle of words, where in earlier
					minuscules you'd expect it to be tall (i.e., to sit on the
					baseline), and you can see that it is a strong diagonal amid the
					other letters. You will see the loops on <b>l</b>, and also on <b>d</b>,
					whose loop turns to the left and crosses back around over itself.
					In <b>lacrimas</b>, <b>lacrimosa</b>, and <b>gaudia</b>, the scribe
					uses the two-story <b>a</b>, often quite tall, which is
					characteristic of the English variety of Cursiva known as
					Anglicana. He uses the standard Cursiva single-story <b>a</b> for
					the second <b>a</b> in <b>lacrimas</b> and <b>lacrimosa</b>, and in
					<b>planctum</b> and <b>plausus</b> in the second line.
				</p>
				<p>
					Features that this script shares with Textualis include the
					2-shaped <b>r</b> in <b>verto</b> at the end of the first line, and
					abundant minim-confusion. The minim-rich letters <b>i n m u</b> are
					slanting here, and they are joined to adjacent letters, which makes
					it even harder to distinguish them. Look at <b>risus</b> in line 1:
					we have an <b>r</b> that looks like a deep <b>v</b>, joined to a
					following <b>i</b>, which leads into a long <b>s</b>, followed by a
					<b>u</b>, followed by a round <b>s</b>, which in this script can
					look a lot like a capital <b>B</b>.
				</p>
				<p>
					This mid-15th-century French or Flemish manuscript, by contrast, is
					much more formal and much more influenced by Textualis. The letters
					and their parts are more regular than in the less-formal English
					manuscript above. But it still has the features that qualify it as
					Cursiva: single-story <b>a</b>, looped ascenders, and <b>f</b> and
					<b>s</b> with long descenders.
				</p>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<img
					src="${pageContext.request.contextPath}/static/img/school/gothic-cursiva-paleography/sbe206_004_cropped.jpg"
					alt="detail of two lines from a French or Flemish manuscript"
					width="900"> <br />
				<small><em>Geneva, Biblioth&egrave;que de
						Gen&egrave;ve, MS fr. 1/2, 1rb, ll. 9-10. (<a
						href="http://www.e-codices.unifr.ch"  target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
<p>The text here reads:<br />
				
					<b>Et data e(st) uiro pro co(n)sorte socia colleterali<br />
					Que si sibi in honore collata humilit(er) p(re)stitisset</b>
				</p>
				
				<p>
					You can see three looped ascenders on <b>l</b> in <b>colleterali</b>
					(corrected to <b>collaterali</b> with a small superscript <b>a</b>),
					and on <b>h</b> and <b>l</b> in several words in the second line.
				</p>
				<p>
					The long <b>s</b> jumps out of the page because it is made with an
					extra-dark, extra-thick stroke with a very pointy descender. This
					is characteristically French or Flemish and is typical of the
					high-grade regional variety of Cursiva known as Bastarda.
				</p>
				<p>
					Textualis-influenced features here include lateral compression; the
					shape of the <b>d</b>&#59; systematic use of biting or fusion, as
					in the <b>da</b> of <b>data</b> and the <b>oc</b> of <b>socia</b>&#59;
					and 2-shaped <b>r</b> after round letters, as in <b>consorte</b>
					and <b>honore</b>.
				</p>
				<hr />
				<p>
					The next manuscript is a very formal Cursiva, with an even more
					marked use of the dark, thickened, pointy, and diagonal <b>f</b>
					and <b>s</b>. This manuscript is in French and was written during
					the first half of the 15th century. If you explore the page, you
					will see many decorative loops and flourishes, and the aspectual
					effects of the strong, dark diagonals.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12" lesson-image>
				<div id="openseadragon2"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1", 
						minZoomLevel : "0.45",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bge_fr1_2_1r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bge_fr1_2_1r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="manuscript page showing formal cursiva style in French">
				</noscript>
				<small><em>Geneva, Biblioth&egrave;que de
						Gen&egrave;ve, MS fr. 1/2, 1r. (<a
						href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
				<p>If you zoom out, you can see how even though the language is
					vernacular and the script is Cursiva, the page layout features are
					exactly what you would expect from a manuscript in Textualis: long
					columns, visible ruling, and the letters floating between the two
					ruled lines.</p>
				<p>If you are getting eyestrain from trying to pick out letters
					in these scripts, then you will sympathize with the Italian
					scholars who were working on reviving Caroline Minuscule around the
					time the manuscripts above were written. Click ahead to go to the
					<i><a href="${pageContext.request.contextPath}/school/lesson/humanist-paleography/historical-overview">Humanist Paleography</a></i> lesson to learn about the reformed minuscule
					and cursive scripts of 15th-century Italian scholars.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>