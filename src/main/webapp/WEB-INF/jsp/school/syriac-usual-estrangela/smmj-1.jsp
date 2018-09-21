<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 2: Jerusalem, SMMJ 1, ff. 47v-48r (8th C.?)" />
	<tiles:putAttribute name="sectionDescription" value="Isaiah (Syro-Hexapla)" />
	<tiles:putAttribute name="previousSection" value="smmj-180" />
	<tiles:putAttribute name="nextSection" value="bladd-14532-f-194r" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
	<p> &nbsp;</p>
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
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00001_048/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
          JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj_00001_048/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ">
          </noscript>
    <small><em>Jerusalem, Saint Mark's Monastery, SMMJ 1, ff. 47v-48r (pp. 92-93). All rights reserved. Image provided by HMML.</em></small> 
   <p>Hexaplaric signs are found throughout. As for word-spacing, <abbr title="Nota bene = note well">n.b.</abbr> <i>w-me&#7789;&#7789;ol-h&#257;d&#275;</i>&nbsp; written without spaces in f. 48/p. 73, line 2.</p>
    </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
        <button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
            <table class="table">
            <caption>Distinctive Letterforms</caption>
        <tbody>
                <tr>
            <td><i>&#257;lap</i></td>
<td>
<ul><li class="letterDescription">top part curves upward, ending with a thicker topmost part
</li></ul></td>
                <tr>
            <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">when joined on the right, the right side is not straight (see f. 38r/p. 73, line 10)
</li></ul></td>
                <tr>
            <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">sharp right angle</li><li class="letterDescription">
	vertical and horizontal parts about the same size</li></ul></td>
                <tr>
            <td><i>zayn</i></td>
<td>
<ul><li class="letterDescription">does not hang below line</li></ul></td>
                <tr>
            <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">final form in the shape of a comma</li></ul></td>
                <tr>
            <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">top may be flatter or more curved (examples of both on f. 37v/p. 72, line 16)
	in final form</li><li class="letterDescription">descender very thin</li></ul></td>
                <tr>
            <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">open loop</li><li class="letterDescription">
	final form has very thin descender</li></ul></td>
                <tr>
            <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">not attached</li><li class="letterDescription">
	left loop notably taller than the right, and of a distinctly different shape</li></ul></td>
          <tr>
            <td><i>&#7779;&#257;d&#275;</i></td>
<td>
<ul><li class="letterDescription">descender very thin</li></ul></td>
                    <tr>
            <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">bowl shape at top, but relatively wide</li></ul></td>
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
<ul><li class="letterDescription">top part curves upward, ending with a thicker topmost part
</li></ul></td>

                <tr>
            <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">when joined on the right, the right side is not straight (see f. 38r/p. 73, line 10)
</li></ul></td>

                <tr>
            <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">sharp right angle</li><li class="letterDescription">
	vertical and horizontal parts about the same size</li></ul></td>

                <tr>
            <td><i>zayn</i></td>
<td>
<ul><li class="letterDescription">does not hang below line</li></ul></td>
                <tr>
            <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">final form in the shape of a comma</li></ul></td>

                <tr>
            <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">top may be flatter or more curved (examples of both on f. 37v/p. 72, line 16)
	in final form</li><li class="letterDescription">descender very thin</li></ul></td>
                <tr>
            <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">open loop</li><li class="letterDescription">
	final form has very thin descender</li></ul></td>
                <tr>
            <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">not attached</li><li class="letterDescription">
	left loop notably taller than the right, and of a distinctly different shape</li></ul></td>
          <tr>
            <td><i>&#7779;&#257;d&#275;</i></td>
<td>
<ul><li class="letterDescription">descender very thin</li></ul></td>
                    <tr>
            <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">bowl shape at top, but relatively wide</li></ul></td>
              </tbody>
              
      </table>
 
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>