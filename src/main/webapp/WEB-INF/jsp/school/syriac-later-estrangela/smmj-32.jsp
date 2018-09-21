<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 3: Jerusalem, SMMJ 32, ff. 91v-92r (12th C.?)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="diyr-340" />
	<tiles:putAttribute name="nextSection" value="ccm-29" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
				   <div id="openseadragon1" style="width: 900px; height: 600px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
       maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00032_092/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00032_092/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from SMMJ 32">
    </noscript>
    <small><em>Jerusalem, St. Mark's Monastery, SMMJ 32, ff. 91v-92r.  All rights reserved. Image provided by HMML.</em></small> </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <p>None of the Serto features that characterize some other Estrangela manuscripts, both earlier and later.
      Abbreviations, seldom used, are marked not with a simple overline, but a dotted overline.</p>
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
<ul><li class="letterDescription">right leg has serif</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">bottom of letter ends in a dot</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">thick top line</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">center line touches neither left nor right line</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">unclosed loop, sharper on right</li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">both types of final: small angle and with left extender</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">the more pointed type</li><li class="letterDescription">
            final has a very thin descender</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">unclosed loop when not final</li><li class="letterDescription">
            final has a very thin descender</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">when initial, rightmost part has a dot (cf. <i>g&#257;mal</i>)</li></ul></td>
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
<ul><li class="letterDescription">right leg has serif</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">bottom of letter ends in a dot</li></ul></td>
</tr>
        <tr>
          <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">thick top line</li></ul></td>
</tr>
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">center line touches neither left nor right line</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">unclosed loop, sharper on right</li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">both types of final: small angle and with left extender</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">the more pointed type</li><li class="letterDescription">
            final has a very thin descender</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">unclosed loop when not final</li><li class="letterDescription">
            final has a very thin descender</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">when initial, rightmost part has a dot (cf. <i>g&#257;mal</i>)</li></ul></td>
</tr>
      </tbody>
    </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>