<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Later Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 9: Mardin, CCM 62, f. 22v (dated 1543)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="ccm-72" />
	<tiles:putAttribute name="nextSection" value="qacct-11" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
				<div id="openseadragon1" style="width: 900px; height: 850px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "0.8", 
		minZoomLevel : "0.55",
       maxZoomLevel : "6",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm_00062_022v/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm_00062_022v/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Syriac manuscript page from CCM 62">
    </noscript>
    <small><em>Mardin, Chaldean Cathedral, CCM 62, f. 22v. All rights reserved. Image provided by HMML.</em></small> 
				<p> &nbsp;</p>	
			</div>
			</div>
	<div class="row">
  <div class="col-lg-12">
    <p>Again, there are no Serto-like features here, and the letters-shapes are a simple, straightforward Estrangela, as in <a href="${pageContext.request.contextPath}/school/lesson/syriac-later-estrangela/ccm-72"><i>CCM 72</i></a>, but the scribe of this 	
    manuscript, whether from care or expertise, has produced a more imposing text thanks to wider word-spacing and more consistent letter-forms. Note the very small size of the (East Syriac) vocalic dots, again as in <i>CCM 72</i>.
    </p>
				<p> &nbsp;</p>	
		</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>