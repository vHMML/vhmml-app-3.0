<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 1: Jerusalem, SMMJ 55, f. 56r (dated 1170)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Fenqitho</i>" />
	<tiles:putAttribute name="nextSection" value="diyr-340" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				 
    <p>Here are examples of manuscripts mainly from the 12th century and later. While Estrangela has the reputation for being the early Syriac script-type par excellence, it continued to be used well past the 15th century, not only in titles or rubrics, but for complete texts. In general, the lines of later Estrangela manuscripts are thicker, with less distinction between thin and thick lines in these copies. As in earlier periods, some letter-shapes similar to or identical with Serto (or East Syriac) may be found. In a previous lesson we saw an Estrangela manuscript with a Serto colophon, and here we will see Estrangela manuscripts with colophons in East Syriac.</p>
    <p>&nbsp;</p>
   </div>
</div>
<div class="row">
  <div class="col-lg-12">

    <div id="openseadragon1" style="width: 900px; height: 600px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
       maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00055_058/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00055__058/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from SMMJ 55">
    </noscript>
    <small><em>Jerusalem, St. Mark's Monastery, SMMJ 55, f. 56r.  All rights reserved. Image provided by HMML.</em></small> 
</div>
</div>
<div class="row">
  <div class="col-lg-12">
  <p>&nbsp;</p>
  <button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				
    <table class="table">
    <caption>Distinctive Letterforms</caption>
      <tbody>
        <tr>
          <td><i>&#257;lap</i></td>
<td>
<ul><li class="letterDescription">serifless on right leg</li><li class="letterDescription">
            still sits a little below the line</li><li class="letterDescription">
            may have Serto shape in final position (see f. 56r, ll. 6 and 19; f. 77v, l. 4)</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">taller than <i>&#x02bf;&#275;</i>, but hangs only a little below line when initial</li><li class="letterDescription">
            when medial, the long line bisects the baseline of the word (cf. <i>&#353;gu&#353;&#275;</i> on f. 56r, l. 4)</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">Serto shape</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">Serto shape</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">Serto shape</li></ul></td>
</tr>
        <tr>
        <td><i>&#7717;&#275;t</i></td>
<td>
<ul><li class="letterDescription">about the same height as <i>yod</i></li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">when final and unattached to previous letter, not merely an angle, but has an extender to the right</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">round on top, but more pointed than earlier examples</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">closed loop</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">joined to following letter</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">the top part more a thick line than a bowl joined to the horizontal base</li></ul></td>
</tr>
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">the loop is closed or almost closed</li></ul></td>
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
        <tr>
          <td><i>&#257;lap</i></td>
<td>
<ul><li class="letterDescription">serifless on right leg</li><li class="letterDescription">
            still sits a little below the line</li><li class="letterDescription">
            may have Serto shape in final position (see f. 56r, ll. 6 and 19; f. 77v, l. 4)</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">taller than <i>&#x02bf;&#275;</i>, but hangs only a little below line when initial</li><li class="letterDescription">
            when medial, the long line bisects the baseline of the word (cf. <i>&#353;gu&#353;&#275;</i> on f. 56r, l. 4)</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">Serto shape</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">Serto shape</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">Serto shape</li></ul></td>
</tr>
        <tr>
        <td><i>&#7717;&#275;t</i></td>
<td>
<ul><li class="letterDescription">about the same height as <i>yod</i></li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">when final and unattached to previous letter, not merely an angle, but has an extender to the right</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">round on top, but more pointed than earlier examples</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">closed loop</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">joined to following letter</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">the top part more a thick line than a bowl joined to the horizontal base</li></ul></td>
</tr>
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">the loop is closed or almost closed</li></ul></td>
</tr>
      </tbody>
    </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>