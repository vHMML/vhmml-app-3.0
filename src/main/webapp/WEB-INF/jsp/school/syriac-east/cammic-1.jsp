<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 3: Mosul, CAM MIC 1, f. 8v  (10th/11th century)" />
	<tiles:putAttribute name="sectionDescription" value="<i>&#7716;udr&#257;</i>"/>
	<tiles:putAttribute name="previousSection" value="dca-144" />
	<tiles:putAttribute name="nextSection" value="ccm-115" />
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
		//defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
       maxZoomLevel : "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/cammic1_8v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/cammic1_8v/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="Syriac manuscript page from CAM MIC 1">
    </noscript>
    <small><em>Mosul, Chaldean Archdiocese, Church of Mar Ishaya, CAM MIC 1, f. 8v. All rights reserved. Image provided by HMML.</em></small> </div>
</div>
    
<div class="row">
  <div class="col-lg-12">
   <p>&nbsp;</p>
  <p>This heavily rubricated manuscript is difficult to read in places due to water damage, fading, or other marks of use and age.</p>
   <button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
  <table class="table">
    <caption>Distinctive Letterforms</caption>
      <tbody>
    <tr><td><i>&#257;lap</i></td><td><ul><li class="letterDescription"> of both types</li></ul></td></tr>
    <tr><td><i>g&#257;mal</i></td><td><ul><li class="letterDescription"> decidedly East Syriac in shape</li></ul></td></tr>
    <tr><td><i>d&#257;lat / r&#275;&#353;</i></td><td><ul><li class="letterDescription"> of the Serto type</li></ul></td></tr>
    <tr><td><i>mim</i></td><td><ul><li class="letterDescription"> not round, but boxy</li></ul></td></tr>
    <tr><td><i>semkat</i></td><td><ul><li class="letterDescription"> not the left-leaning &#952;, but in a form similar to Estrangela, although with little height difference between the two loops, both of which are slightly pointed</li></ul></td></tr>
    <tr><td><i>p&#275;</i></td><td><ul><li class="letterDescription"> relatively tall</li></ul></td></tr>
    <tr><td><i>&#353;in</i></td><td><ul><li class="letterDescription"> not the usual t-shape, but like an inverted triangle sitting on the baseline</li></ul></td></tr>
    <tr><td><i>t&#257;w</i></td><td><ul><li class="letterDescription"> in both types, the triangular form at word-end</li></ul></td></tr>
 	</tbody></table>
 	</span>
 	</div>
</div>
<div class="row">
  <div class="col-lg-12">
 	<table class="table syriacLetterforms">
    <caption>Distinctive Letterforms</caption>
      <tbody>
    <tr><td><i>&#257;lap</i></td><td><ul><li class="letterDescription"> of both types</li></ul></td></tr>
    <tr><td><i>g&#257;mal</i></td><td><ul><li class="letterDescription"> decidedly East Syriac in shape</li></ul></td></tr>
    <tr><td><i>d&#257;lat / r&#275;&#353;</i></td><td><ul><li class="letterDescription"> of the Serto type</li></ul></td></tr>
    <tr><td><i>mim</i></td><td><ul><li class="letterDescription"> not round, but boxy</li></ul></td></tr>
    <tr><td><i>semkat</i></td><td><ul><li class="letterDescription"> not the left-leaning &#952;, but in a form similar to Estrangela, although with little height difference between the two loops, both of which are slightly pointed</li></ul></td></tr>
    <tr><td><i>p&#275;</i></td><td><ul><li class="letterDescription"> relatively tall</li></ul></td></tr>
    <tr><td><i>&#353;in</i></td><td><ul><li class="letterDescription"> not the usual t-shape, but like an inverted triangle sitting on the baseline</li></ul></td></tr>
    <tr><td><i>t&#257;w</i></td><td><ul><li class="letterDescription"> in both types, the triangular form at word-end</li></ul></td></tr>
 	</tbody></table>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>