<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value=" Syriac Paleography: Earliest Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 3: Diyarbakir, DIYR 339, f. 29v (6th C.)" />
	<tiles:putAttribute name="sectionDescription"
		value="Gospels (Peshitta)" />
	<tiles:putAttribute name="previousSection" value="vat-sir160f140v" />
	<tiles:putAttribute name="nextSection" value="bl-add14460f80r" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12 lesson-image">
			<p>&nbsp;</p>	
    <div id="openseadragon1" style="width: 900px; height: 900px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
		maxZoomLevel : "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr339_29v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr339_29v/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from Meryem Ana Syriac Orthodox Church, 6th century">
    </noscript>
    <small><em>Diyarbakir, Meryem Ana Syriac Orthodox Church, DIYR 339, f. 29v. All rights reserved. Image provided by HMML.</em></small>
    </div>
	</div>
     <div class="row">
	<div class="col-lg-12">
	<p>Large, bold writing </p>
	<button class="btn left school showAnswer">Float 
							table of letterforms</button>
	<span class="exerciseAnswer">
	<span class="answerTitle"></span>
	<table class="table">
	<caption>Distinctive Letterforms</caption>
      <tbody>
        <tr>
          <td><i>&#257;lap</i></td>
<td>
<ul><li class="letterDescription">when connected and not, there is a serif on the right leg</li><li class="letterDescription">
            often sits a little below the line
            may have an almost upward-turning serif at the top</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">rather thick horizontal on top</li><li class="letterDescription">
            dot of <i>d&#257;lat</i> often sits well below</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">the center leg touches neither the left nor the right</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">not closed</li><li class="letterDescription">
            when preceding some letters (e.g. <i>&#353;in</i>) may be connected (in Usual Estrangela not
            attached)</li></ul></td>
</tr>
        <tr>
          <td><i>&#7717;&#275;t</i></td>
<td>
<ul><li class="letterDescription">notably taller than the <i>yod</i></li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">when final, connected to previous letter or not, a right-pointing angle sitting on
            the line</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">much narrower and more rounded than <i>b&#275;t</i></li><li class="letterDescription">
            final <i>k&#257;p</i> has a longish top-serif on the left side and ends with a sharp, narrow
            point on the right</li></ul></td>
</tr>
        <tr>
          <td><i>l&#257;mad</i></td>
<td>
<ul><li class="letterDescription">thick at the top, slender at the bottom</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">the upper horizontal turns upward at the left</li><li class="letterDescription">
            when non-final, the bottom horizontal is close to the left upright, but the circle is
            not closed</li><li class="letterDescription">
            final <i>mim</i>, however, is closed, and has a long, thin, descending point</li></ul></td>
</tr>
        <tr>
          <td><i>nun</i></td>
<td>
<ul><li class="letterDescription">when final and unconnected to previous letter, more angled than when connected</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">both loops rounded, the left one taller</li><li class="letterDescription">
            does not join to following letter</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">similar in shape to <i>g&#257;mal</i>, but shorter and without hanging below the line</li></ul></td>
</tr>
        <tr>
          <td><i>p&#275;</i></td>
<td>
<ul><li class="letterDescription">the loop is quite open</li><li class="letterDescription">
            when final, the horizontal ends in a thick dot</li></ul></td>
</tr>
        <tr>
          <td><i>&#7779;&#257;d&#275;</i></td>
<td>
<ul><li class="letterDescription">narrow base at the line, then a thicker, slightly right angling descender, ending
            with a thin, upturning line</li></ul></td>
</tr>
        <tr>
          <td><i>r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">see <i>d&#257;lat</i> above</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">an upright base with a shallow bowl on top</li><li class="letterDescription">
            when initial, often with a long horizontal before the upright base (indistinguishable
            from the combination <i>yod-&#353;in</i>)</li></ul></td>
</tr>
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">the size of the opening in the loop varies from open to closed </li><li class="letterDescription">
            the vertical may only angle only slightly to the left</li></ul></td>
</tr>
      </tbody>
    </table>
    

    </span>
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
<ul><li class="letterDescription">when connected and not, there is a serif on the right leg</li><li class="letterDescription">
            often sits a little below the line
            may have an almost upward-turning serif at the top</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">rather thick horizontal on top</li><li class="letterDescription">
            dot of <i>d&#257;lat</i> often sits well below</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">the center leg touches neither the left nor the right</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">not closed</li><li class="letterDescription">
            when preceding some letters (e.g. <i>&#353;in</i>) may be connected (in usual Est. not
            attached)</li></ul></td>
</tr>
        <tr>
          <td><i>&#7717;&#275;t</i></td>
<td>
<ul><li class="letterDescription">notably taller than the <i>yod</i></li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">when final, connected to previous letter or not, a right-pointing angle sitting on
            the line</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">much narrower and more rounded than <i>b&#275;t</i></li><li class="letterDescription">
            final <i>k&#257;p</i> has a longish top-serif on the left side and ends with a sharp, narrow
            point on the right</li></ul></td>
</tr>
        <tr>
          <td><i>l&#257;mad</i></td>
<td>
<ul><li class="letterDescription">thick at the top, slender at the bottom</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">the upper horizontal turns upward at the left</li><li class="letterDescription">
            when non-final, the bottom horizontal is close to the left upright, but the circle is
            not closed</li><li class="letterDescription">
            final <i>mim</i>, however, is closed, and has a long, thin, descending point</li></ul></td>
</tr>
        <tr>
          <td><i>nun</i></td>
<td>
<ul><li class="letterDescription">when final and unconnected to previous letter, more angled than when connected</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">both loops rounded, the left one taller</li><li class="letterDescription">
            does not join to following letter</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">similar in shape to <i>g&#257;mal</i>, but shorter and without hanging below the line</li></ul></td>
</tr>
        <tr>
          <td><i>p&#275;</i></td>
<td>
<ul><li class="letterDescription">the loop is quite open</li><li class="letterDescription">
            when final, the horizontal ends in a thick dot</li></ul></td>
</tr>
        <tr>
          <td><i>&#7779;&#257;d&#275;</i></td>
<td>
<ul><li class="letterDescription">narrow base at the line, then a thicker, slightly right angling descender, ending
            with a thin, upturning line</li></ul></td>
</tr>
        <tr>
          <td><i>r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">see <i>d&#257;lat</i> above</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">an upright base with a shallow bowl on top</li><li class="letterDescription">
            when initial, often with a long horizontal before the upright base (indistinguishable
            from the combination <i>yod-&#353;in</i>)</li></ul></td>
</tr>
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">the size of the opening in the loop varies from open to closed </li><li class="letterDescription">
            the vertical may only angle only slightly to the left</li></ul></td>
</tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <p  class="imageTitle">f. 62r, with two tightly closed <i>t&#257;ws</i>, with only a slightly left-leaning vertical</p>
    <img src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/DIYR_00339_062r_closedtaws.jpg" alt="part of line from 6th-century Syriac manuscript page from Turkey"> <br />
    <small><em>Diyarbakir, Meryem Ana Syriac Orthodox Church, DIYR 339, f. 62ra, l. 2. All rights reserved. Image provided by HMML.</em></small>
    <p>&nbsp;</p>
    
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>