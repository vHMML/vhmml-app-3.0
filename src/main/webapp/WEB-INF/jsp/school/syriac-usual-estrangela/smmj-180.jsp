<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 1: Jerusalem, SMMJ 180, ff. 54v-55r (7th/8th C.)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Book of Steps</i>" />
	<tiles:putAttribute name="nextSection" value="smmj-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>The examples highlighted in this lesson come mainly from the
					8th-11th centuries. I am calling it &#8220;usual&#8221; Estrangela
					because the common type of writing in these examples aligns closely
					with what people will consider a classic or typical kind of
					Estrangela, although even here there are also examples of certain
					shapes more often associated with Serto, and, as usual, in any
					case, every manuscript shows some peculiarities.</p>
				<p>Specific features are indicated below generally only when
					distinct from those mentioned for <a href="${pageContext.request.contextPath}/school/lesson/syriac-estrangela/diyr339"><i>DIYR 339</i></a> in the <a href="${pageContext.request.contextPath}/school/lesson/syriac-estrangela/estrangela">lesson on Earliest Estrangela</a>.</p>
					<p>&nbsp;</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				
				<div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00180_036/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00180_036/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from SMMJ 180">
				</noscript>
				<small><em>Jerusalem, Saint Mark's Monastery, SMMJ 180, ff. 54v-55r. All rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					This manuscript is an early copy of the <i>Book of Steps (Liber
						graduum)</i> and parts of the <i>Asceticon</i> of Abba Isaiah. The
					original order of folios has been obliterated by misbinding, and
					thus the present arrangement is wholly confused. (For a full
					folio-by-folio breakdown of the contents see
					<a href="https://hmmlorientalia.wordpress.com/2014/11/17/saint-marks-jerusalem-180-book-of-steps-asceticon-of-abba-isaiah/" target="_blank">hmmlorientalia blog post on this manuscript</a>.)
					As in SMMJ 129, some notes in early Serto complement the Estrangela
					of the main text.
				</p>
				<p>
					The script is very straightforward Estrangela, with sharp
					angles as in the <i>b&#275;t</i> and <i>&#7789;&#275;t</i>. When
					there is a little space at line end, the final letter has an
					extender to reach the edge. Here are some remarks on a few
					particulars:
				</p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
<table class="table">
    <caption>Distinctive Letterforms</caption>
      <tbody>
				<tr><td>
					<i>&#257;lap</i></td><td><ul><li class="letterDescription">usually relatively short </li><li class="letterDescription">
					if the following letter has a leading line it may be attached to the <i>&#257;lap</i>,
					as in the first word (<i>wp&#8217;&#353;</i>) of f. 55r, col. a, line 17</li> </ul>
				</td></tr>
				<tr><td>
					<i>b&#275;t</i></td><td><ul><li class="letterDescription">has a relatively narrow top horizontal
				</li></ul></td></tr>
				<tr><td>
					<i>d&#257;lat</i> / <i>r&#275;&#353;</i></td><td><ul><li class="letterDescription">angled, with a thicker
					top line that is not as long as the vertical line</li></ul>
				</td></tr>
				<tr><td>
					<i>w&#257;w</i></td><td><ul><li class="letterDescription">not closed, and the vertical line on the right
					hangs a little below the line</li></ul>
				</td></tr>
				<tr><td>
					<i>l&#257;mad</i></td><td><ul><li class="letterDescription">reaches very high, sometimes crossing the line
					above</li></ul>
				</td></tr>
				<tr><td>
					<i>mim</i></td><td><ul><li class="letterDescription">not closed</li></ul>
				</td></tr>
				<tr><td>
					<i>nun</i></td><td><ul><li class="letterDescription">in its final form not attached to the previous letter</li><li class="letterDescription">
					is at an angle noticeably more horizontal than when it is attached</li> </ul>
				</td></tr>
				<tr><td>
					<i>semkat</i></td><td><ul><li class="letterDescription">not attached</li></ul>
				</td></tr>
				<tr><td>
					<i>&#353;in</i></td><td><ul><li class="letterDescription">the shape of a small <b>t</b></li></ul>
				</td></tr>
		</tbody></table>	</span>
		</div>
</div>
<div class="row">
  <div class="col-lg-12">			
<table class="table syriacLetterforms">
    <%-- <caption>Distinctive Letterforms</caption> --%>
      <tbody>
				<tr><td>
					<i>&#257;lap</i></td><td><ul><li class="letterDescription">usually relatively short </li><li class="letterDescription">
					if the following letter has a leading line it may be attached to the <i>&#257;lap</i>,
					as in the first word (<i>wp&#8217;&#353;</i>) of f. 55r, col. a, line 17</li> </ul>
				</td></tr>
				<tr><td>
					<i>b&#275;t</i></td><td><ul><li class="letterDescription">has a relatively narrow top horizontal
				</li></ul></td></tr>
				<tr><td>
					<i>d&#257;lat</i> / <i>r&#275;&#353;</i></td><td><ul><li class="letterDescription">angled, with a thicker
					top line that is not as long as the vertical line</li></ul>
				</td></tr>
				<tr><td>
					<i>w&#257;w</i></td><td><ul><li class="letterDescription">not closed, and the vertical line on the right
					hangs a little below the line</li></ul>
				</td></tr>
				<tr><td>
					<i>l&#257;mad</i></td><td><ul><li class="letterDescription">reaches very high, sometimes crossing the line
					above</li></ul>
				</td></tr>
				<tr><td>
					<i>mim</i></td><td><ul><li class="letterDescription">not closed</li></ul>
				</td></tr>
				<tr><td>
					<i>nun</i></td><td><ul><li class="letterDescription">in its final form not attached to the previous letter</li><li class="letterDescription">
					is at an angle noticeably more horizontal than when it is attached</li> </ul>
				</td></tr>
				<tr><td>
					<i>semkat</i></td><td><ul><li class="letterDescription">not attached</li></ul>
				</td></tr>
				<tr><td>
					<i>&#353;in</i></td><td><ul><li class="letterDescription">the shape of a small <b>t</b></li></ul>
				</td></tr>
		</tbody></table>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>