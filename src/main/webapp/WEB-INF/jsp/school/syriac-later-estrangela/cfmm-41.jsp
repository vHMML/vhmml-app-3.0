<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 6: Mardin, CFMM 41, p. 94/ f. 56v (13th C.?)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="asom-1" />
	<tiles:putAttribute name="nextSection" value="diyr-338" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			 <p>&nbsp;</p>
				 <div id="openseadragon1" style="width: 900px; height: 900px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.8", 
		minZoomLevel : "0.6",
       maxZoomLevel : "6",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm00041_056v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from ">
    </noscript>
    <small><em>Mardin, Church of the Forty Martyrs, CFMM 41, p. 94 (f. 56v). All rights reserved. Image provided by HMML. </em></small> </div>
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
	sits below line</li></ul></td>
</tr>
        <tr>
        <td><i>b&#275;t</i></td>
<td>
<ul><li class="letterDescription">rather narrow</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">lowest part of the letter ends in a dot</li></ul></td>
</tr>
        
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">non-final type very short</li><li class="letterDescription">
	final type has left extender</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">more rounded than pointed</li></ul></td>
</tr>
         <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">like the old shape, with taller left loop than right</li><li class="letterDescription">
	the left loop more pointed than the right</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">initial form has no dot (cf. <i>g&#257;mal</i>), but does have a small serif</li></ul></td>
</tr>
        
        
        <tr>
          <td><i>s&#257;d&#275;</i></td>
<td>
<ul><li class="letterDescription">top part at the line barely horizontal, more curvy</li></ul></td>
</tr>
           <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">top part rather straight</li></ul></td>
</tr>
        

        
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">loop rather open</li></ul></td>
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
	sits below line</li></ul></td>
</tr>
        <tr>
        <td><i>b&#275;t</i></td>
<td>
<ul><li class="letterDescription">rather narrow</li></ul></td>
</tr>
        <tr>
          <td><i>g&#257;mal</i></td>
<td>
<ul><li class="letterDescription">lowest part of the letter ends in a dot</li></ul></td>
</tr>
        
        <tr>
          <td><i>yod</i></td>
<td>
<ul><li class="letterDescription">non-final type very short</li><li class="letterDescription">
	final type has left extender</li></ul></td>
</tr>
        <tr>
          <td><i>k&#257;p</i></td>
<td>
<ul><li class="letterDescription">more rounded than pointed</li></ul></td>
</tr>
         <tr>
          <td><i>semkat</i></td>
<td>
<ul><li class="letterDescription">like the old shape, with taller left loop than right</li><li class="letterDescription">
	the left loop more pointed than the right</li></ul></td>
</tr>
        <tr>
          <td><i>&#x02BF;&#275;</i></td>
<td>
<ul><li class="letterDescription">initial form has no dot (cf. <i>g&#257;mal</i>), but does have a small serif</li></ul></td>
</tr>
        
        
        <tr>
          <td><i>s&#257;d&#275;</i></td>
<td>
<ul><li class="letterDescription">top part at the line barely horizontal, more curvy</li></ul></td>
</tr>
           <tr>
          <td><i>&#353;in</i></td>
<td>
<ul><li class="letterDescription">top part rather straight</li></ul></td>
</tr>
        

        
        <tr>
          <td><i>t&#257;w</i></td>
<td>
<ul><li class="letterDescription">loop rather open</li></ul></td>
</tr>
      </tbody>
    </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>