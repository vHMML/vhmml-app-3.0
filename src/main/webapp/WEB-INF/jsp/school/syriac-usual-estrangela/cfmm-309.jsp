<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 4: Mardin, CFMM 309, p. 112 (8th/9th C.)" />
	<tiles:putAttribute name="sectionDescription" value="Canons" />
	<tiles:putAttribute name="previousSection" value="bladd-14532-f-194r" />
	<tiles:putAttribute name="nextSection" value="cod-ambr-a" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
<p>&nbsp;</p>
				 <div id="openseadragon1" style="width: 900px; height: 700px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.7", 
		minZoomLevel : "0.5",
       	maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm00309_061v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
          JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm00309_061v/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ">
          </noscript>
    <small><em>&copy; Mardin, Church of the Forty Martyrs, CFMM 309, p. 112. All rights reserved. Image provided by HMML.</em></small> 
    </div>
    </div>
<div class="row">
        <div class="col-lg-12">
<p>This manuscript, some pages of which are more difficult to read due to faded ink, has its main text in Estrangela, but the scribe himself (it seems) has also made several marginal notes in Serto (longer ones on pp. 313 and 321, for example). Several pages, including this one, also have some Greek names either in the margin or in a separate column.</p>


<p>The abbreviations are marked, as usual, with an overline, in this case with small dots at each end.</p>

</div>
</div>
<div class="row">
  <div class="col-lg-12">
  <p>Some particular forms:</p>
<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
<table class="table">
    <caption>Distinctive Letterforms</caption>
      <tbody>
	  
	  <tr><td><i>&#257;lap</i></td> <td><ul><li class="letterDescription">very wide, with a large dot or serif at the top<li class="letterDescription">
the left leg sometimes hangs especially low</li></ul></td></tr>

<tr><td><i>d&#257;lat</i> and <i>r&#275;&#353;</i></td> <td>of a very compact, slightly rounded Serto type, hanging below the line only barely, if at all</td>
</tr>
<tr><td><i>h&#275;</i></td> <td>of the Serto type, with a closed loop</td>
</tr>
<tr><td><i>w&#257;w</i></td> <td>completely round, as in Serto</td>
</tr>
<tr><td><i>nun</i></td> <td>in isolated form merely a thick dot with a very thin angled descender</td>
</tr>
<tr><td><i>semkat</i></td> <td>of the left-leaning &#952; shape</td>
</tr>
<tr><td><i>&#353;in</i></td> <td>very squat and thick, with no separate top part</td>
</tr>
<tr><td><i>t&#257;w</i></td> <td>has a loop so tightly closed that it is nonexistent</td>
</tr>
</tbody>
</table></span>
</div>
</div>
<div class="row">
  <div class="col-lg-12">
<table class="table syriacLetterforms">
    <caption>Distinctive Letterforms</caption>
      <tbody>
	  
	  <tr><td><i>&#257;lap</i></td> <td><ul><li class="letterDescription">very wide, with a large dot or serif at the top<li class="letterDescription">
the left leg sometimes hangs especially low</li></ul></td></tr>

<tr><td><i>d&#257;lat</i> and <i>r&#275;&#353;</i></td> <td>of a very compact, slightly rounded Serto type, hanging below the line only barely, if at all</td>
</tr>
<tr><td><i>h&#275;</i></td> <td>of the Serto type, with a closed loop</td>
</tr>
<tr><td><i>w&#257;w</i></td> <td>completely round, as in Serto</td>
</tr>
<tr><td><i>nun</i></td> <td>in isolated form merely a thick dot with a very thin angled descender</td>
</tr>
<tr><td><i>semkat</i></td> <td>of the left-leaning &#952; shape</td>
</tr>
<tr><td><i>&#353;in</i></td> <td>very squat and thick, with no separate top part</td>
</tr>
<tr><td><i>t&#257;w</i></td> <td>has a loop so tightly closed that it is nonexistent</td>
</tr>
</tbody>
</table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>