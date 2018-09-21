<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 2: Diyarbakir, DIYR 340, ff. 30v-31r (11th/12th C.)" />
	<tiles:putAttribute name="sectionDescription" value="Gospels (Harklean)" />
	<tiles:putAttribute name="previousSection" value="smmj-55" />
	<tiles:putAttribute name="nextSection" value="smmj-32" />
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
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/diyr_00340_031/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/diyr_00340_031/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from DIYR 340">
    </noscript>
    <small><em>Diyarbakir, Meryem Ana Syriac Orthodox Church, DIYR 340, ff. 30v-31r. All rights reserved. Image provided by HMML.</em></small> </div>
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
            left leg hangs below the line</li><li class="letterDescription">
	there is really no body to the letter when non-initial</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">not much taller than <i>&#x02bf;&#275;</i></li><li class="letterDescription">
	hangs well below the line, ending in a dot</li></ul></td>
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
<ul><li class="letterDescription">noticeably taller than <i>yod</i></li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">when final and unattached to previous letter, not merely an angle, but has an extender to the right</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">round on top, not as semi-pointed as some later examples</li><li class="letterDescription">
	when final, the descender is very thin</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">when final, the descender is very thin</li></ul></td>
</tr>
                <tr>
          <td><i>nun</i></td>
<td>
<ul><li class="letterDescription">when final, the descender is very thin</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">very unlike earlier Estrangela: the two loops almost unidentifiable as loops, with a resulting shape almost a small &#952; leaning about 45&#176; to the left</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">rather narrow top line</li></ul></td>
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
            left leg hangs below the line</li><li class="letterDescription">
	there is really no body to the letter when non-initial</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">not much taller than <i>&#x02bf;&#275;</i></li><li class="letterDescription">
	hangs well below the line, ending in a dot</li></ul></td>
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
<ul><li class="letterDescription">noticeably taller than <i>yod</i></li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">when final and unattached to previous letter, not merely an angle, but has an extender to the right</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">round on top, not as semi-pointed as some later examples</li><li class="letterDescription">
	when final, the descender is very thin</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">when final, the descender is very thin</li></ul></td>
</tr>
                <tr>
          <td><i>nun</i></td>
<td>
<ul><li class="letterDescription">when final, the descender is very thin</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">very unlike earlier Estrangela: the two loops almost unidentifiable as loops, with a resulting shape almost a small &#952; leaning about 45&#176; to the left</li></ul></td>
</tr>
        <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">rather narrow top line</li></ul></td>
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