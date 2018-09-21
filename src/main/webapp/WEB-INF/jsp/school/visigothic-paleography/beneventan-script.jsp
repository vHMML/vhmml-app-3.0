<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Visigothic and Beneventan: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 4: Beneventan Script" />
	<tiles:putAttribute name="previousSection" value="exercise-1" />
	<tiles:putAttribute name="nextSection" value="exercise-2" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p>&nbsp;</p>
				<p class="image-title">Initial four lines from the Monte Cassino Exultet Roll, ca.
					1075-80 CE. This manuscript is in a form specific to the
					Beneventan region, a roll containing the text of the Easter
					Proclamation, which is sung at the Easter Vigil. The red marks
					above the text are neums, a musical notation.</p>
				<%-- <div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", 
						minZoomLevel : "0.8",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add30337f8r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add30337f8r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from the British Library">
				</noscript>
				--%>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/BL_add30337_f8r_crop4lines.jpg" width="900"
					alt="first four lines of manuscript from the British library, written in Beneventan Script with red marks above the black text" />
				<br /> <small><em>&copy; The British Library Board,
						Add. 30337, f. 8r, ll. 1-4.</em></small>
				<p>&nbsp;</p>
				<p>The other distinctive script of southern Europe is
					Beneventan, which was developed and perfected at the Abbey of Monte
					Cassino, the birthplace of Benedictine monasticism. &#40;The name
					&#8220;Beneventan&#8221; comes from Beneventum, the territory
					around Monte Cassino.&#41; Because of the immense prestige of Monte
					Cassino as St. Benedict&#8217;s own monastery, the use of the
					Beneventan script spread throughout southern Italy and across the
					Adriatic to Dalmatia.</p>
				<p>The Beneventan script emerges in the 8th century, around the
					same time as Visigothic. Examples have been found as late as the
					16th century. The &#8220;period of perfection&#8221; of the script
					is the 11th century, and we illustrate the characteristics of the
					script from an 11th-century manuscript from Monte Cassino.</p>
				<p>Beneventan is a highly formal, canonical script. Scribes
					trained in the script use a wide variety of ligatures, including
					many also seen in Visigothic, but in Beneventan there are many more
					of them, and they are used according to a strict system specific to
					Beneventan.</p>
				<p>In what follows, we introduce the main identifying
					characteristic of Beneventan, the &#8220;broken minim&#8221; and
					the look of Beneventan ligatures, which will help you identify the
					script when you see it.</p>
					<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			
				<h3 class="lessonSubheading">Recognizing Beneventan</h3>
				<h4 class="lessonSubheading">The Broken Minim</h4>
				<p>The most distinctive and important characteristic of
					Beneventan is the so-called &#8220;broken minim.&#8221; The basic
					vertical stroke that is the building block of letters in any script
					is, in Beneventan, made up of two short, wide diagonal strokes
					meeting at a point in the middle.</p>
				<p>Before we look at examples of the broken minim, let's review
					what minims look like in Textualis.</p>
					<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/in-numeris.jpg"
					alt="Latin in numeris in Gothic Textualis script"><b>&nbsp;in numeris</b>
					<br /><small><em>All rights reserved. Image provided by HMML.</em></small>
				
				<p>
					This is from Cologne, Erzbisch&ouml;fliche Di&ouml;zesan- und
					Dombibliothek, MS 149, fol. 50r, column b, which we looked at in the last lesson. Textualis,
					especially in its <i>formata</i> (carefully-composed,
					highly-calligraphic) form, is noted for its angularity. If you look
					carefully at the detail above, you can see how that angularity
					comes about. Each minim &#8212; the upright strokes of <b>i n u
						m e</b> and <b>r</b> &#8212; starts with an angled approach stroke
					coming from the upper left, and finishes with either a
					separately-applied lozenge-shaped stroke at the bottom, or a stroke
					angled down and to the right with a hairstroke up and to the right.
					Those angles, plus the fact that the minims are made precisely
					vertical and parallel to one another, identify this as Textualis
					and make it feel like a script of straight lines with very few
					curves.
				</p>
				<p>At first glance, Beneventan can seem similarly angular (and
					is definitely similarly regular), but if we get in close, we can
					see that the angularity results from a different ductus.</p>
					<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/cum-omni.jpg"
					alt="two Latin words in Beneventan script"> <b>&nbsp;cum omni</b>
				<br /><small><em>Detail &copy; The British Library Board, Add.
						30337, f. 8r, l. 13.</em></small>
				<p>
					In this detail, from the Beneventan Exultet Roll shown at the head
					of this section, you can see that every letter that in Textualis
					would be made up of vertical minims (with added strokes at head and
					foot), here made up of two diagonal strokes. In <b>cum
						omni</b> above, <b>u m n</b> and <b>i</b> are each composed of two
					flag-like strokes that touch at a point at mid-minim. This is the
					Beneventan &#8220;broken minim.&#8221;
				</p>
				<p>
					Now compare that broken minim to a less-formal Textualis. As we saw
					in the last lesson, less-formal versions of Textualis do not have
					the extreme angularity of Cologne manuscript 149, discussed above.
					But a less-formal Textualis will still have a regular pattern of
					parallel minims and a consistent rhythm of feet &#8212; and <i>not</i>
					have broken minims. Compare this detail of the Bethune Breviary,
					with which we worked in the last unit, to Beneventan:
				</p>
				
				<p>Textualis:</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/omnes.jpg"
					alt="one Latin word in Textualis script"><b>&nbsp;omnes</b>
					<br /><small><em>Detail from HMML, Bethune Breviary, MS 2, f. 7ra, l. 9.<br />Used under  a <a href="https://creativecommons.org/licenses/by-nc/4.0/"  target="_blank">CC BY-NC 4.0 license</a>.
</em></small>
				<p>&nbsp;</p>
				<p>Beneventan:</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/cum-omni.jpg"
					alt="two Latin words in Beneventan script"><b>&nbsp;cum omni</b>
					<br /><small><em>Detail &copy; The British Library Board, Add.
						30337, f. 8r, l. 13.</em></small>
					
				<p>&nbsp;</p>
				<p>
					In the Textualis example, each minim (as in the letters <b>n</b>
					and <b>m</b>) has a hairline or wedge-shaped approach stroke and a
					hairline finishing stroke, but the body of the minim is made with
					one continuous stroke &#8212; in this case, slightly curved. In the
					Beneventan example, each minim is &#8220;broken&#8221; in the
					middle &#8212; formed with two distinct strokes that meet each
					other at a point.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Ligatures</h4>
				<p>
					The other thing that makes Beneventan recognizable is the effect of
					obligatory ligatures on the script&#8217;s aspect. &#40;By
					&#8220;obligatory,&#8221; we mean that a scribe trained in
					Beneventan will <i>always</i> make these ligatures, with the result
					that this is a constant feature of the script.&#41; The letters <b>e</b>,
					<b>f</b>, <b>g</b>, <b>r</b>, and <b>t</b> all have connecting
					strokes that reach out and join the following letter at minim-height.
					Even if you can't decipher the ligatures, the visual effect is
					distinctive. A series of letters all joined with horizontal strokes
					at minim-height can make it look like a line has been drawn through
					the word.
				</p>
				<p>
					For example, this word is <b>eterna</b>. The two <b>e</b>s, the <b>t</b>,
					and the <b>r</b> &#40;with pointy top and descender&#41; have their
					middle strokes extended out to the right to touch the next letter.
					The cumulative effect is a line at minim-height across the first
					half of the word.
				</p>
				<p>&nbsp;</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/eterna.jpg"
					alt="Latin word in Beneventan script" /><b>&nbsp;eterna</b>
					<br /> <small><em>Detail &copy; The British Library Board,
						Add. 30337, f. 8r, l. 16.</em></small>
				<p>&nbsp;</p>
				<p>
					Here is a similar effect in the word <b>antistite:</b>
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/antistite.jpg"
					alt="Latin word in Beneventan script"> <b>&nbsp;antistite</b>
					<br /> <small><em>Detail &copy; The British Library Board,
						Add. 30337, f. 8r, l. 10.</em></small>
				<p>&nbsp;</p>
				<p>
					In addition to the ligatures that join letters with horizontal
					strokes at minim-height, Beneventan also uses a variety of
					ligatures with <b>i</b> in which the <b>i</b> is long and curvy
					like a <b>j</b>. Beneventan has a different set of rules from
					Visigothic about when the <b>j</b>-like <b>i</b> is used. In <b>antistite</b>,
					above, you can see two ligatures with <b>t</b> joined to <b>j</b>-like
					<b>i</b>, which in Beneventan represents the <i>hard</i> <b>ti</b>
					sound. In <b>imperatoris nostri</b> below, there are two
					examples of the pointy-topped Beneventan <b>r</b> joined to a
					curvy, flourishy <b>i</b> that swoops below the baseline.
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/imperatoris-nostri.jpg"
					alt="two Latin words in Beneventan script"><b>&nbsp;imperatoris nostri</b>
					<br /> <small><em>Detail &copy; The British Library Board,
						Add. 30337, f. 8r, l. 12.</em></small>
				<p>&nbsp;</p>
				<p>
					Go back up to the larger image of this manuscript at the head of
					this section and explore. Can you find more broken minims,
					pointy-topped <b>r</b>s, <b>j</b>-style <b>i</b>s, and runs of
					horizontal ligatures?
				</p>
				<p>&nbsp;</p>
				<p>Are you ready to try recognizing Beneventan? Click ahead to
					try a quick exercise.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>