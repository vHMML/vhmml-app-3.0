<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 5: Mosul, ASOM 1, f. 17v (dated 1279)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="ccm-29" />
	<tiles:putAttribute name="nextSection" value="cfmm-41" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p class="imageTitle">dated April 20, 1279</p>	
				 <div id="openseadragon1" style="width: 900px; height: 850px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.7", 
		minZoomLevel : "0.6",
       maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/asom_00001_017v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/asom_00001_017v/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ">
    </noscript>
    <small><em>Mosul, Syriac Orthodox Archdiocese, ASOM 1, f. 17v. All rights reserved. Image provided by HMML.</em></small> </div>
</div>
<p>No Serto features.</p>
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
<ul><li class="letterDescription">serif on right leg</li><li class="letterDescription">
	does not sit below line, except when final</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">lowest part of the letter ends in a dot</li></ul></td>
</tr>
        
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">the center line has a short, thin descender</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">unclosed loop</li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">final form is the angle type</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">the more pointed type</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">unclosed when non-final</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">like the old shape, with taller left loop than right</li><li class="letterDescription">
	the loops are both rather pointed
</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">leftmost part of letter does not have a dot</li></ul></td>
</tr>
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">rather open loop</li></ul></td>
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
<ul><li class="letterDescription">serif on right leg</li><li class="letterDescription">
	does not sit below line, except when final</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">lowest part of the letter ends in a dot</li></ul></td>
</tr>
        
        <tr>
          <td><i>h&#275;</i></td>
<td>
<ul><li class="letterDescription">the center line has a short, thin descender</li></ul></td>
</tr>
        <tr>
          <td><i>w&#257;w</i></td>
<td>
<ul><li class="letterDescription">unclosed loop</li></ul></td>
</tr>
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">final form is the angle type</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">the more pointed type</li></ul></td>
</tr>
        <tr>
          <td><i>mim</i></td>
<td>
<ul><li class="letterDescription">unclosed when non-final</li></ul></td>
</tr>
        <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">like the old shape, with taller left loop than right</li><li class="letterDescription">
	the loops are both rather pointed
</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">leftmost part of letter does not have a dot</li></ul></td>
</tr>
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">rather open loop</li></ul></td>
</tr>
      </tbody>
    </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>