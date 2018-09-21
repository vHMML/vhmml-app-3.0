<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2:  The Transition from Caroline to Textualis" />
	<tiles:putAttribute name="previousSection" value="historical-overview" />
	<tiles:putAttribute name="nextSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>The scripts of the later 11th through the 12th centuries
					show to varying degrees the symptoms of the transition from
					Caroline to Textualis. It is helpful to have a category,
					&#8220;Protogothic&#8221;, for varieties of script in this period
					that are recognizably no longer canonical Caroline Minuscule but
					are not yet fully-developed Textualis.</p>
				<p>&nbsp;</p>
				<h4 class="lessonSubheading">Aspect in the transitional period</h4>
				<p>The most obvious feature of late Caroline and 12th-century
					Protogothic script is a change in the proportions of letterforms.
					Minim-height grows markedly in proportion to the whole letter
					&#8212; or, to put it another way, the relative length of ascenders
					and descenders decreases. At the same time, the letters, and
					eventually the words, are laterally compressed. It is as if the
					small, rounded bowls of canonical Caroline Minuscule had been
					squeezed into elongated egg shapes. The change in proportion of the
					letters is apparent in this mid-12th-century manuscript from
					Germany:</p>

			</div>
		 </div>
		 <div class="row">
			<div class="col-lg-12">
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.6", // normally defaults to 0
						minZoomLevel : "0.5",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/koln139/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/koln139/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Cologne 139, 12th century">
				</noscript>
				<small><em>K&ouml;ln, Erzbisch&ouml;fliche
						Di&ouml;zesan- und Dombibliothek, Cod. 139, f. 21r.</em></small>
			</div>
		 </div>
		 <div class="row">
			<div class="col-lg-12">

				<p>The manuscript below, which has an extensive marginal and
					interlinear gloss, shows the change in proportion both in the main
					hand and in the less-formal glossing hand. Both manuscripts are
					recognizably Carolingian in their careful spacing and use of Rustic
					Capitals for headings. The differences in layout between this
					manuscript and the one above have more to do with purpose than with
					style or period: the Cologne manuscript is a liturgical manuscript
					containing a bishop&#8217;s part of the liturgy, while the more
					complex, glossed book from the Walters is designed for study.</p>

				<div id="openseadragon2"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.4",
						minZoomLevel : "0.35",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w30-6v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w30-6v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from Walters 30, 12th century">
				</noscript>
				<small><em>Walters Art Museum, W.30, f. 6v. &copy; 2011
						Walters Art Museum, used under a <a
						href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
						target="_blank">CC BY-SA license</a>.
				</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
		<p>In this early-12th-century English Gospel manuscript, the
			letters are even more markedly laterally compressed. That feature,
			combined with reduced space between lines, is beginning to make the
			columns of writing look denser:</p>

		<div id="openseadragon3"
			style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
		<script type="text/javascript">
			var viewer = OpenSeadragon({
				id : "openseadragon3",
				prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
				defaultZoomLevel : "0.4",
				minZoomLevel : "0.38",
				maxZoomLevel : "5",
				zoomPerClick: "1.4", showRotationControl : "true",
				tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v/GeneratedImages/dzc_output.xml"
			});
		</script>
		<noscript>
			JavaScript needs to be enabled in order to utilize the zoom viewer. A
			static image of the manuscript may be seen: <img
				src="${pageContext.request.contextPath}/static/js/openseadragon/images/walters-w18-11v/GeneratedImages/dzc_output_files/9/0_0.jpg"
				alt="manuscript page from Walters 18, 12th century">
		</noscript>
		<small><em>Walters Art Museum, W. 18, f. 11v. &copy; 2011
				Walters Art Museum, used under a <a
				href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
				target="_blank">CC BY-SA license</a>.
		</em></small>
		
		<p>This manuscript also shows another of the signal features of
			the emergence of Textualis: the uniform treatment of the feet of
			letters, giving a characteristic rhythm at the baseline. The
			uniformity of the feet of minims tends to emphasize the vertical
			stroke as the basic building-block of Gothic script.</p>
		<p>Note how every vertical stroke is finished at the bottom with a
			uniform hairline uptick, and how the accumulation of feet in that
			style affects the overall rhythm of the script:</p>
		</div>
	</div>
	<div class="row">
			<div class="col-lg-12">
		<p>
			<img
				src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/eum2.jpg"
				alt="the word eum is depicted from Walters 18, 12th century">
			<b>&nbsp;eum</b>
		</p>
		<p>&nbsp;</p>
		<p>
			<img
				src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/extendens.jpg"
				alt="the sentence extendens manum appre- from Walters 18, 12th century" />
			<b>extendens manum appre-</b>
		</p>
		 <p>&nbsp;</p>
		<p>
			Meanwhile, the tops of upright strokes come to be embellished with
			forking penstrokes. You can see this feature is also apparent in the detail
			below, on the ascender of <b>d</b> and at the top of <b>l</b>:
		</p>

		<img
			src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/walters18paragraph.jpg"
			alt="paragraph excerpt from Walters 18, 12th century" />
			<p><small>Details above from <em>Walters Art Museum, W. 18, f. 11v. &copy; 2011 Walters Art Museum, used under a <a href="https://creativecommons.org/licenses/by-nc-sa/3.0/"  target="_blank">CC BY-SA license</a>. </em></small></p> 
			
		<hr />
	</div>
	</div>
		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">Letterforms</h4>
				<p>If you look up close at these and similar manuscripts of the
					12th century, you will see that although the proportions of the
					letterforms have changed, the letters themselves overwhelmingly
					retain their Caroline Minuscule forms.</p>
				<p>As the transition from Caroline to Gothic Textualis
					continues, though, a number of particular letterforms can be seen
					to change. Watch for these as signs of the emergence of Textualis:</p>
				<ul>
					<li>Uncial <b>d</b> &#8212; the rounded form with stem leaning
						over to the left &#8212; reemerges and is used in variation with
						upright <b>d</b>.
					</li>
					<li>Uncial (round) <b>s</b> &#8212; our normal form of the
						letter &#8212; is reintroduced at word-end only, where it
						alternates with tall <b>s</b>.
					</li>
					<li>The upright stroke of <b>t</b> begins to peek ever so
						slightly above its crossbar.
					</li>
					<li>The hasta of <b>e</b> begins to slope upward and to the
						right.
					</li>
					<li>Following <b>o</b>, <b>r</b> comes to have a 2-shaped
						form. The <b>or</b> ligature in this shape is the normal form of
						that letter sequence in Textualis.
					</li>
					<li>The bow of <b>h</b> bends around and finishes with a
						hairstroke pointing down and to the left. By the end of the 12th
						century, the end of that stroke descends below the baseline.
					</li>
					<li>The 7-shaped &#8220;Tironian <i>et</i>&#8221; &#8212; the
						ancient sign for &#8220;and&#8221; used in Insular manuscripts
						&#8212; is reintroduced and gradually supplants the ampersand (<b>e-t</b>
						ligature), which was the exclusive form of <i>et</i> in
						Carolingian manuscripts.
					</li>
				</ul>
				<p>
					In the detail below, you can see tall <b>s</b> at the end of <b>(-)flictionis</b>
					at the beginning of the line, and round <b>s</b> at the end
					of <b>(-)uaricationis</b> at the beginning of the next line. The
					upright of <b>t</b> in <b>(-)flictionis</b> pokes ever so slightly
					above its crossbar. The <b>e</b> in the second word in the first
					line, <b>su&#281;</b>, has a hasta with a marked diagonal slant. And if
					you look at the little word between the lines, you can see <b>o</b>
					plus 2-shaped <b>r</b>. This word is <b>mantator(um)</b>. The <b>r</b>
					looks like a 2 whose second stroke is a large swash down and to the
					right, and it is closely attached to the <b>o</b> it follows. The
					diagonal slash through the tail of the 2-shaped <b>r</b> indicates
					that the end of the word is abbreviated.
				</p>
			</div>
		</div>
	<div class="row">
			<div class="col-lg-12">
		<img
			src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/walters30paragraph.jpg"
			alt="manuscript page from Walters 30, 12th century" />
<br /><small>from <em>Walters Art Museum, W. 30, f. 6v. &copy; 2011
				Walters Art Museum, used under a <a
				href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
				target="_blank">CC BY-SA license</a>.
	</em></small>

		</div>
	</div>
	<div class="row">
			<div class="col-lg-12">
		<p>
			In this detail below, you can see the use of round <b>s</b> at word end,
			and also the alternation between upright and Uncial <b>d</b>. The
			text reads:
		</p>
		<blockquote>
			<b>regni insignia exterius conde-<br>corant eundem
				laudabilia
			</b>
		</blockquote>

		<p>
			The round <b>s</b> is used at the end of <i>exterius</i>, something
			you would not see in earlier Carolingian manuscripts. Meanwhile, <b>conde-</b>
			uses an Uncial <b>d</b>, but <b>eundem</b> and <b>laudabilia</b> each
			have an upright <b>d</b>.
		</p>
		<img src="${pageContext.request.contextPath}/static/img/school/gothic-textualis/walters12excerpt.jpg"
			 alt="manuscript page from Walters 12, 12th century" />
			
<br /><small> from <em>Walters Art Museum, W. 12, f. 5r. &copy; 2011
				Walters Art Museum, used under a <a href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
				target="_blank">CC BY-SA license</a>. </em></small>
		
		<p>
			This detail is a good chance to observe, too, how comparatively
			larger minim-height and the lateral compression of the letters have
			changed the look of the script. But note that the <b>a</b> and the <b>g</b>
			are still completely Caroline.
		</p>
		<p>Are you ready to try recognizing transitional forms in the
			wild? Click ahead to the exercise in the next section to try your
			hand at telling Protogothic from Carolingian manuscripts.</p>

		<p>&nbsp;</p>
		
		</div>
		</div>
	
	</tiles:putAttribute>
</tiles:insertTemplate>