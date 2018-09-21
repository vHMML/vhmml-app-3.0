<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 4:  Exercise" />
	
	<tiles:putAttribute name="previousSection" value="anglo-saxon" />
	<tiles:putAttribute name="nextSection" value="miniscules" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
			<h4 class="lessonSubheading">Is it Uncial or Insular Half-Uncial? </h4>
			  <p>Which one of these three manuscripts is NOT written in Insular Half-Uncial? (Hint: keep an eye out for <b>g</b> and <b>a</b>. Do you remember which forms of those letters are characteristically Uncial and which are Half-Uncial?)</p>
       <div class="row">
      <div class="col-md-4 col-lg-4 lesson-image">	
		a.
<div id="openseadragon1" style="width: 300px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", // normally defaults to 0
		minZoomLevel: "0.8",
		maxZoomLevel: "10",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output.xml"
    });
</script> 
	
<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from The British Library, London, England, 700 CE"></noscript>
<small><em>&copy; The British Library Board, Cotton Nero D IV, f. 34r.</em></small>
</div>
	<div class="col-md-4 col-lg-4 lesson-image">
		b.
<div id="openseadragon2" style="width: 300px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon2",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1",
		minZoomLevel: "0.8",
		maxZoomLevel: "10", 
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bodleianmsd2_14_130r/GeneratedImages/dzc_output.xml"
    });
</script>
<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bodleianmsd2_14_130r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from Italy, 600 CE"></noscript>
 <small><em>The Bodleian Libraries, The University of Oxford, Auct. D. 2. 14, f. 130r.</em></small>
</div>
<div class="col-md-4 col-lg-4 lesson-image">
		c.
       <div id="openseadragon3" style="width: 300px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon3",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1",
		minZoomLevel: "0.8",
		maxZoomLevel: "10", 
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51-8/GeneratedImages/dzc_output.xml"
    });
</script>
<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51-8/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from St. Gallen, Stiftsbibliothek, Cod. Sang. 700 CE"></noscript>
 <small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 51, p. 8. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>)</em></small>
</div>
   </div>
<p></p>
<div class="row">
<div class="col-lg-12">
<button class="btn left school showAnswer">Display the Answer</button>
<span class="exerciseAnswer">
<p><b>b.</b> Bodleian, MS. Auct. D. 2. 14, f. 130r.</p>
<hr />
</span>
    </div>
</div>
      <p>&nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>