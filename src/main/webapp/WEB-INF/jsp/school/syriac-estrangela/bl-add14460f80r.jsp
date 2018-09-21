<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac Paleography: Earliest Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 4: London, BL Add. 14460, f. 80r (dated 599/600)" />
	<tiles:putAttribute name="sectionDescription"
		value="Gospels (Peshitta)" />
	<tiles:putAttribute name="nextSection" value="qacct8" />
	<tiles:putAttribute name="previousSection" value="diyr339" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
					<div id="openseadragon1" style="width: 900px; height: 1500px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
		maxZoomLevel : "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add14460f80r/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add14460f80r/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="Syriac manuscript page from The British Library, 14460">
    </noscript>
    <small><em>&copy; The British Library Board, Add. 14460, f. 80r.</em></small>
    <p>&nbsp;</p>
     <div class="row">
	<div class="col-lg-12">
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
<ul><li class="letterDescription">serif on right leg</li><li class="letterDescription">
              left leg hangs below line</li></ul></td>
</tr>
          <tr>
            <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">ends well below line, but without the thick dot of some later examples</li></ul></td>
</tr>
          <tr>
            <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">usually of the presumably typical, angled Estrangela form, but sometimes more
              round at top</li></ul></td>
</tr>
          <tr>
            <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">center post angled somewhat to the left</li></ul></td>
</tr>
          <tr>
            <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">very round</li><li class="letterDescription">
              open loop</li></ul></td>
</tr>
          <tr>
            <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">quite round</li></ul></td>
</tr>
          <tr>
            <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">open loop, or barely closed</li><li class="letterDescription">
              final form with very thin tail</li></ul></td>
</tr>
          <tr>
            <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">horizontal line not too thick</li><li class="letterDescription">
              top line not too round</li></ul></td>
</tr>
          <tr>
            <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">loop open</li><li class="letterDescription">
              when unconnected on either side, lacking a proper loop at the bottom</li><li class="letterDescription">
              the vertical may only angle only slightly to the left</li></ul></td>
</tr>
        </tbody>
      </table>

    </span>

</div>
</div>
    <p>&nbsp;</p>
    <div class="container">
      <table class="table syriacLetterforms">
      <caption>Distinctive Letterforms</caption>
        <tbody>
          <tr>
            <td><i>&#257;lap</i></td>
<td>
<ul><li class="letterDescription">serif on right leg</li><li class="letterDescription">
              left leg hangs below line</li></ul></td>
</tr>
          <tr>
            <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">ends well below line, but without the thick dot of some later examples</li></ul></td>
</tr>
          <tr>
            <td><i>d&#257;lat / r&#275;&#353;</i></td>
<td>
<ul><li class="letterDescription">usually of the presumably typical, angled Estrangela form, but sometimes more
              round at top</li></ul></td>
</tr>
          <tr>
            <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">center post angled somewhat to the left</li></ul></td>
</tr>
          <tr>
            <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">very round</li><li class="letterDescription">
              open loop</li></ul></td>
</tr>
          <tr>
            <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">quite round</li></ul></td>
</tr>
          <tr>
            <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">open loop, or barely closed</li><li class="letterDescription">
              final form with very thin tail</li></ul></td>
</tr>
          <tr>
            <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">horizontal line not too thick</li><li class="letterDescription">
              top line not too round</li></ul></td>
</tr>
          <tr>
            <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">loop open</li><li class="letterDescription">
              when unconnected on either side, lacking a proper loop at the bottom</li><li class="letterDescription">
              the vertical may only angle only slightly to the left</li></ul></td>
</tr>
        </tbody>
      </table>
    </div>
    <p>Example of the unconnected, tightly looped, <i>t&#257;w</i>, with only a slightly left-leaning vertical; even with these similar features, the <i>t&#257;w</i> 
    in this example and that of the previously noted <a href="${pageContext.request.contextPath}/school/lesson/syriac-estrangela/diyr339"><i>DIYR 339</i></a> are quite distinct from each other: note the more spacious and sharply angled part to the right of the loop in the 
    <i>DIYR 339</i> <i>t&#257;w</i>, and note the large dot at the top of the vertical in the example here:</p>
    <p> <img src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/BL_Add_14460_f80r_line4partial.jpg" alt="manuscript line 4 from The British Library, Add. 14460, folio 80 recto"> </p>
    <small><em>&copy; The British Library Board, Add. 14460, f. 80r, l.4.</em></small>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>