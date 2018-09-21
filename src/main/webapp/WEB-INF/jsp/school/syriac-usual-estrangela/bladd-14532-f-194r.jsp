<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 3: London, BL Add. 14532, f. 194r (8th C.)" />
	<tiles:putAttribute name="sectionDescription" value="Excerpts from the Fathers Against Heresies" />
	<tiles:putAttribute name="previousSection" value="smmj-1" />
	<tiles:putAttribute name="nextSection" value="cfmm-309" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p> &nbsp;</p>	
				 <div id="openseadragon1" style="width: 900px; height: 720px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.75", 
		minZoomLevel : "0.6",
       	maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add14532f194r/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
          JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bl_add14532f194r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ">
          </noscript>
    <small><em>&copy; The British Library Board, Add. 14532, f. 194r.</em></small> 
   <p>Thick lines of relative uniformity.</p>
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
            <td><i>&#257;lap</i></td><td><ul>
									<li class="letterDescription">serif on top, as well as on
										the bottom of the right leg</li></ul></td></tr>
                <tr>
            <td><i>g&#257;mal</i></td><td><ul><li class="letterDescription"> 	very small dot at the lowest point of the letter</li></ul></td></tr>
                <tr>
            <td><i>d&#257;lat / r&#275;&#353;</i></td><td><ul><li class="letterDescription">the top bar is short, often joined to the vertical by not much of an angle</li></ul></td></tr>

                <tr>
            <td><i>w&#257;w</i></td>
            <td><ul><li class="letterDescription">angled at top right, then round on the left</li><li class="letterDescription">
	loop usually open</li></ul></td>
</tr>
                <tr>
            <td><i>yod</i></td>
            <td><ul><li class="letterDescription">joined form often rather tall, but not quite as tall as <i>nun</i></li><li class="letterDescription">
	final isolated form is the comma shape</li></ul> 
</td>
</tr>
                <tr>
            <td><i>mim</i></td><td><ul><li class="letterDescription">loop sometimes open, sometimes closed</li></ul></td>

                <tr>
            <td><i>semkat</i></td>
            <td><ul><li class="letterDescription">not attached</li><li class="letterDescription">
	left loop notably taller than the right, and of a distinctly different shape</li></ul></td>
</tr>
          <tr>
            <td><i>&#7779;&#257;d&#275;</i><td><ul><li class="letterDescription">descender very thin, esp. in comparison to the uniform thickness elsewhere in the script</li></ul></td>
            </tr>
                    <tr>
            <td><i>&#353;in</i></td><td><ul><li class="letterDescription">thick bowl or chalice shape</li></ul></td></tr>

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
            <td><i>&#257;lap</i></td><td><ul>
									<li class="letterDescription">serif on top, as well as on
										the bottom of the right leg</li></ul></td></tr>
                <tr>
            <td><i>g&#257;mal</i></td><td><ul><li class="letterDescription"> 	very small dot at the lowest point of the letter</li></ul></td></tr>
                <tr>
            <td><i>d&#257;lat / r&#275;&#353;</i></td><td><ul><li class="letterDescription">the top bar is short, often joined to the vertical by not much of an angle</li></ul></td></tr>

                <tr>
            <td><i>w&#257;w</i></td>
            <td><ul><li class="letterDescription">angled at top right, then round on the left</li><li class="letterDescription">
	loop usually open</li></ul></td>
</tr>
                <tr>
            <td><i>yod</i></td>
            <td><ul><li class="letterDescription">joined form often rather tall, but not quite as tall as <i>nun</i></li><li class="letterDescription">
	final isolated form is the comma shape</li></ul> 
</td>
</tr>
                <tr>
            <td><i>mim</i></td><td><ul><li class="letterDescription">loop sometimes open, sometimes closed</li></ul></td>

                <tr>
            <td><i>semkat</i></td>
            <td><ul><li class="letterDescription">not attached</li><li class="letterDescription">
	left loop notably taller than the right, and of a distinctly different shape</li></ul></td>
</tr>
          <tr>
            <td><i>&#7779;&#257;d&#275;</i><td><ul><li class="letterDescription">descender very thin, esp. in comparison to the uniform thickness elsewhere in the script</li></ul></td>
            </tr>
                    <tr>
            <td><i>&#353;in</i></td><td><ul><li class="letterDescription">thick bowl or chalice shape</li></ul></td></tr>

              </tbody>
              
      </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>