<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 6: Language on the Page in Insular Manuscripts" />
	
	<tiles:putAttribute name="previousSection" value="miniscules" />
	<tiles:putAttribute name="nextSection" value="whatnext" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Layout and Legibility</h4>
          <p>High-grade Insular manuscripts took over the layout patterns of their late-antique models. This meant a fairly spare, spacious page with margins largely free of writing on the text pages; a general preference for single-column layouts for smaller books and two-column layouts for large, luxury Bible manuscripts. These features of late-antique Uncial manuscripts were imitated both in Uncial manuscripts made in Romanizing centers in Anglo-Saxon England, and in Irish and Irish-influenced centers that used Insular Half-Uncial.</p>
      
       <p>Compare the layout of the Lindisfarne Gospels with one of the
					Italian Uncial manuscripts of a century earlier that we looked at
					in the last lesson:</p>
       </div>
	   <p>&nbsp; </p>
        <div class="row">
      <div class="col-md-6 col-lg-6 lesson-image">	
      <p class="imageTitle">The Lindisfarne Gospels. Northumbria, ca. 700</p>
		<div id="openseadragon1" style="width: 450px; height: 500px; background-color:#666;border-radius: 1%;"></div>
		<script type="text/javascript">
		    var viewer = OpenSeadragon({
		        id: "openseadragon1",
		        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
				defaultZoomLevel: "1", // normally defaults to 0
				minZoomLevel: "0.75",
				maxZoomLevel: "10",
				zoomPerClick: "1.4", showRotationControl : "true",
				tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output.xml"
		    });
		</script> 
			
		<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from London, British Library, MS Cotton Nero D IV, folio 18v."></noscript>
		<small><em>&copy; The British Library Board, Cotton Nero D IV, f. 34r.</em></small>
		</div>
			<div class="col-md-6 col-lg-6 lesson-image">
		    <p class="imageTitle">Italy, ca. 600</p>
		    
		<div id="openseadragon2" style="width: 450px; height: 500px; background-color:#666;border-radius: 1%;"></div>
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
		<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bodleianmsd2_14_130r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from Oxford, Bodleian Library, MS Auct. D. 2. 14, folio 130r."></noscript>
		 <small><em>The Bodleian Libraries, The University of Oxford, Auct. D. 2. 14, f. 130r.</em></small>
		</div>
		</div>
		
		<p>Compare, too, the single-column layout in a mid-8th-century Irish Gospel book with a 6th-century Italian manuscript of Augustine:</p>

        <div class="row">
      <div class="col-md-6 col-lg-6 lesson-image">	
      <p class="imageTitle">Ireland, 8th century</p>
<div id="openseadragon3" style="width: 450px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon3",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", // normally defaults to 0
		minZoomLevel: "0.7",
		maxZoomLevel: "10",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51-8/GeneratedImages/dzc_output.xml"
    });
</script> 
	
<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang51-8/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from London, British Library, MS Cotton Nero D IV, folio 18v."></noscript>
<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 51, p. 8. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)</em></small>
</div>
	<div class="col-md-6 col-lg-6 lesson-image">
    <p class="imageTitle">Italy, ca. 600</p>
<div id="openseadragon4" style="width: 450px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon4",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1",
		minZoomLevel: "0.8",
		maxZoomLevel: "8", 
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bavpallat210/GeneratedImages/dzc_output.xml"
    });
</script>
<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bavpallat210/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from Vatican City, circa 600."></noscript>
 <small><em>&copy; Bibliotheca Apostolica Vaticana,  Pal. lat. 210, f. 4r.</em></small>
</div>


<p>
					The Insular scribes have taken over the late-antique tools to aid
					legibility. In the Lindisfarne Gospels, as in late-antique Italian
					models, the text is laid out
					<i>per</i> <i>cola</i> <i>et</i> <i>commata</i> &#8212;
					Jerome&#8217;s system of writing one sense unit to a line. In the
					single-column Irish book, St. Gallen Cod. Sang. 51, we see a
					marking of the beginnings of sentences with <i>litterae</i> <i>notabiliores</i>, as in the earlier Italian book from the Vatican.</p>
<p>The big difference &#8212; apart from choice of script &#8212; between Insular manuscripts of the 7th and 8th centuries and Continental manuscripts of a century earlier is that Insular scribes had begun to introduce separation between words. Note in the examples above how in Biblioteca Apostolica Vaticana MS Pal. lat. 210, there are big spaces between sentences but no spaces at all between words. That indicates a readership that might have been interested in help navigating the text as a whole, but had little need of visual help identifying where words started and ended. 6th-century Italian readers spoke a form of Late Latin close enough to the language of Augustine or Jerome that their native-speaker intuitions would have been useful in navigating the written form of their language. Irish and Anglo-Saxon readers, on the other hand, needed all the help they could get with Latin, a completely foreign language. In St. Gallen Cod. Sang. 51, the Irish manuscript, there is fairly consistent spacing between words. The introduction of word spacing was an innovation of Insular scribes in this period.</p>
      <p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>