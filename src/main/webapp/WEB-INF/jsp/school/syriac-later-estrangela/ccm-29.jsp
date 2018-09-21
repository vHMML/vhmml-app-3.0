<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 4: Mardin, CCM 29, f. 27r (12th/13th C.)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="smmj-32" />
	<tiles:putAttribute name="nextSection" value="asom-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p> &nbsp;</p>	
				<div id="openseadragon1" style="width: 900px; height: 800px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.8", 
		minZoomLevel : "0.7",
       maxZoomLevel : "6",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm_00029_028r/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm_00029_028r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from CCM 29">
    </noscript>
    <small><em>Mardin, Chaldean Cathedral, CCM 29, f. 27r. All rights reserved. Image provided by HMML.</em></small>
     </div>
</div>
<div class="row">
  <div class="col-lg-12">
  <p>&nbsp;</p>
<p>The letter-lines in this manuscript vary little in thickness.</p>
<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
<table class="table">
    <caption>Distinctive Letterforms</caption>
      <tbody>
        <tr>
          <td><i>&#257;lap</i></td> 
          <td><ul><li class="letterDescription">left leg often hanging especially low</li>
          <li class="letterDescription">the straight line type of <i>&#257;lap</i> rarely appears (cf. f. 28r, col. b, l. 13)</li>
          </ul></td></tr>
 <tr>
          <td><i>g&#257;mal</i></td> <td> dot at the bottom</td></tr>
 <tr>
          <td><i>d&#257;lat</i> / <i>r&#275;&#353;</i></td> <td>the round Serto shape, hanging only slightly below the line</td></tr>
 <tr>
          <td><i>h&#275;</i></td> <td>closed loop on the left, as in Serto</td></tr>
 <tr>
          <td><i>w&#257;w</i></td> <td>perfectly round and closed</td></tr>
 <tr>
          <td><i>semkat</i></td> <td>of the left-leaning &#952; type</td></tr>
 <tr>
          <td><i>t&#257;w</i></td> <td>has a tightly closed loop</td></tr>
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
          <td><ul><li class="letterDescription">left leg often hanging especially low</li>
          <li class="letterDescription">the straight line type of <i>&#257;lap</i> rarely appears (cf. f. 28r, col. b, l. 13)</li>
          </ul></td></tr>
 <tr>
          <td><i>g&#257;mal</i></td> <td> dot at the bottom</td></tr>
 <tr>
          <td><i>d&#257;lat</i> /  <i>r&#275;&#353;</i></td> <td>the round Serto shape, hanging only slightly below the line</td></tr>
 <tr>
          <td><i>h&#275;</i></td> <td>closed loop on the left, as in Serto</td></tr>
 <tr>
          <td><i>w&#257;w</i></td> <td>perfectly round and closed</td></tr>
 <tr>
          <td><i>semkat</i></td> <td>of the left-leaning &#952; type</td></tr>
 <tr>
          <td><i>t&#257;w</i></td> <td>has a tightly closed loop</td></tr>
          </tbody>
          </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>