<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 12: Tell Kaif, QACCT 12, f. 41r (dated 1676)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="dcd-2" />
	<tiles:putAttribute name="nextSection" value="dca-5" />
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
		defaultZoomLevel: "0.9", 
		minZoomLevel : "0.7",
       maxZoomLevel : "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/qacct_00012_041r/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/qacct_00012_041r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from QACCT 12">
    </noscript>
    <small><em>Tell Kaif, Qalb Al-Aqdas Chaldean Church, QACCT 12, f. 41r. All rights reserved. Image provided by HMML.</em></small> </div>
</div>
<div class="row">
  <div class="col-lg-12">
  <p>&nbsp;</p>
  <p>This hand is very similar to that of <a href="${pageContext.request.contextPath}/school/lesson/syriac-later-estrangela/qacct-11"><i>QACCT 11</i></a>, from about a century earlier. There are no Serto-like features, and the letter-forms here are common formal or decorative Estrangela types. Descenders (or parts of them), as in <i>s&#257;d&#275;</i>, final <i>k&#257;p</i>, <i>mim</i>, and <i>nun</i>, are narrow. 
The <i>&#257;lap</i> has a very thin leg on the right with a dot on the bottom.</p>
   
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>