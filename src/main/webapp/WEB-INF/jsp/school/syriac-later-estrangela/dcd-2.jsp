<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 11: Dohuk, DCD 2, f. 44r (dated 1680)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="qacct-11" />
	<tiles:putAttribute name="nextSection" value="qacct-12" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				
			<p class="imageTitle">1992 AG = 1680 CE, Dec 11</p>
				<div id="openseadragon1" style="width: 900px; height: 900px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.8", 
		minZoomLevel : "0.6",
       maxZoomLevel : "6",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/dcd_00002_0045r/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/dcd_00002_0045r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from DCD 2">
    </noscript>
    <small><em>Dohuk, Chaldean Diocese, DCD 2, f. 44r. All rights reserved. Image provided by HMML.</em></small> </div>
</div>
<div class="row">
  <div class="col-lg-12">
  <p>&nbsp;</p>
    <p>A careful, almost decorative hand, and very thick, with only a few very thin lines for contrast. Again we have a colophon in East Syriac.</p>
    <button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
    <table class="table">
    <caption>Distinctive Letterforms</caption>
      <tbody>
        <tr>
          <td><i>&#257;lap</i></td>
<td>
<ul><li class="letterDescription">right leg with a thick dot at bottom, then very thin before attaching to the long top arm</li><li class="letterDescription">
            top line angles upward</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">sublinear part very thin, ending in a large dot</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">curved at the bottom when joined on the right</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">very thin middle line, which reaches slightly below the line and angles to the left</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">loop not closed</li><li class="letterDescription">
            angle at top right</li></ul></td>
</tr>
        <tr>
          <td><i>zayn</i></td>
<td>
<ul><li class="letterDescription">does not reach below the line</li><li class="letterDescription">
            top part thick, coming to a point at the bottom</li></ul></td>
</tr>
        <tr>
          <td><i>&#7717;&#275;t</i></td>
<td>
<ul><li class="letterDescription">right vertical taller than left</li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">final form ends in a straight line, not the comma type</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">in final form, the letter curves back to the right at the top left side</li><li class="letterDescription">
            descender of final form very thin </li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">loop not closed</li><li class="letterDescription">
            descender of final form very thin</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">pointed, or horned, on both loops</li><li class="letterDescription">
            not joined to following letter</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">top line simply a straight bar</li></ul></td>
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
<ul><li class="letterDescription">right leg with a thick dot at bottom, then very thin before attaching to the long top arm</li><li class="letterDescription">
            top line angles upward</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">sublinear part very thin, ending in a large dot</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">curved at the bottom when joined on the right</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">very thin middle line, which reaches slightly below the line and angles to the left</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">loop not closed</li><li class="letterDescription">
            angle at top right</li></ul></td>
</tr>
        <tr>
          <td><i>zayn</i></td>
<td>
<ul><li class="letterDescription">does not reach below the line</li><li class="letterDescription">
            top part thick, coming to a point at the bottom</li></ul></td>
</tr>
        <tr>
          <td><i>&#7717;&#275;t</i></td>
<td>
<ul><li class="letterDescription">right vertical taller than left</li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">final form ends in a straight line, not the comma type</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">in final form, the letter curves back to the right at the top left side</li><li class="letterDescription">
            descender of final form very thin </li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">loop not closed</li><li class="letterDescription">
            descender of final form very thin</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">pointed, or horned, on both loops</li><li class="letterDescription">
            not joined to following letter</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">top line simply a straight bar</li></ul></td>
</tr>
      </tbody>
    </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>