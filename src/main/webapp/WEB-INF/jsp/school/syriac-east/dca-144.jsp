<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 2: Alqosh, DCA 144, f. 11v (1273 AG = 961/2)" />
	<tiles:putAttribute name="sectionDescription" value="Gospels" />
	<tiles:putAttribute name="previousSection" value="overview" />
	<tiles:putAttribute name="nextSection" value="cammic-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
		<p> &nbsp;</p>
			<div class="col-lg-12">
				 <div id="openseadragon1" style="width: 900px; height: 600px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.6", 
		minZoomLevel : "0.5",
       maxZoomLevel : "6",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/dca144_011v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/dca144_011v/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="Syriac manuscript page from DCA 144">
    </noscript>
    <small><em>Alqosh, Chaldean Diocese, DCA 144, f. 11v. All rights reserved. Image provided by HMML.</em></small> 
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
    <tr><td><i>&#257;lap</i></td><td><ul><li class="letterDescription"> of the Estrangela type</li></ul></td></tr>
    <tr><td><i>d&#257;lat / r&#275;&#353;</i></td><td><ul><li class="letterDescription"> often like the common Serto type (i.e. without much of a base at the bottom)</li></ul></td></tr>
   <tr><td> <i>&#7789;&#275;t</i></td><td><ul><li class="letterDescription">when final, has a round bottom part</li></ul></td></tr>
    <tr><td><i>mim</i></td><td><ul><li class="letterDescription"> round, even in final form, but the left arm comes more from the side than the bottom of the loop</li></ul></td></tr>
    <tr><td><i>nun</i></td><td><ul><li class="letterDescription"> in final form either a very modest sublinear angled stroke with a right-curving hook at the bottom, or the longer almost horizontal type</li></ul></td></tr>
    <tr><td><i>t&#257;w</i></td><td><ul><li class="letterDescription"> in both types, the Estrangela and the triangle</li></ul></td></tr>
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
    <tr><td><i>&#257;lap</i></td><td><ul><li class="letterDescription"> of the Estrangela type</li></ul></td></tr>
    <tr><td><i>d&#257;lat / r&#275;&#353;</i></td><td><ul><li class="letterDescription"> often like the common Serto type (i.e. without much of a base at the bottom)</li></ul></td></tr>
   <tr><td> <i>&#7789;&#275;t</i></td><td><ul><li class="letterDescription">when final, has a round bottom part</li></ul></td></tr>
    <tr><td><i>mim</i></td><td><ul><li class="letterDescription"> round, even in final form, but the left arm comes more from the side than the bottom of the loop</li></ul></td></tr>
    <tr><td><i>nun</i></td><td><ul><li class="letterDescription"> in final form either a very modest sublinear angled stroke with a right-curving hook at the bottom, or the longer almost horizontal type</li></ul></td></tr>
    <tr><td><i>t&#257;w</i></td><td><ul><li class="letterDescription"> in both types, the Estrangela and the triangle</li></ul></td></tr>
  	</tbody>
    </table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>