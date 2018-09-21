<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Gothic Cursiva: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 1: Historical Overview and Terminology" />
	<tiles:putAttribute name="nextSection" value="cursiva-features" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				 <p>In this chapter, we return to Gothic scripts of the later Middle Ages and examine the other major class of scripts besides Textualis. This group of scripts is known in Albert Derolez&#8217;s classification system as <b>Cursiva</b>.</p>
      <p>Beginning in the 13th century, scripts that had been used primarily for documents (documentary cursives) began to be used as book scripts as an alternative to Textualis. Cursiva is the name for these book scripts developed from documentary cursives. Cursive-based scripts took less time to write and were suited to the expanding production of books in this period. The use of Gothic Cursiva in books increased during the era when the copying of vernacular literature was also increasing, and we find many vernacular texts, as well as Latin ones, written in the regional varieties of Cursiva.</p>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6 lesson-image">
      <p class="imageTitle">Gothic Cursiva written in England, ca. 1390-1410</p>
      <div id="openseadragon1" style="width: 600px; height: 500px; background-color:#666;border-radius: 1%;"></div>
      <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		//defaultZoomLevel: "1", 
		minZoomLevel: "0.6",
		maxZoomLevel: "7",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/blharley866/GeneratedImages/dzc_output.xml"
    });
</script>
      <noscript>
      JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/blharley866/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="manuscript page from the British library showing Gothic cursive script">
      </noscript>
      <small><em>&copy; The British Library Board, Harley 866, f. 17r.
</em></small> </div>
    <div class="col-lg-6 lesson-image">
      <p class="imageTitle">Gothic Cursiva written in France or Flanders, ca. 1430-1450</p>
      <div id="openseadragon2" style="width: 600px; height: 500px; background-color:#666;border-radius: 1%;"></div>
      <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon2",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		//defaultZoomLevel: "1", 
		minZoomLevel: "0.6",
		maxZoomLevel: "10",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/sbe206_004/GeneratedImages/dzc_output.xml"
    });
</script>
      <noscript>
      JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/sbe206_004/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="manuscript page from  Einsiedeln, Stiftsbibliothek, showing Gothic cursiva script">
      </noscript>
      <small><em>Geneva, Biblioth&egrave;que de Gen&egrave;ve, Codex 206(49), p. 4.<br/>(<a href="http://www.e-codices.unifr.ch"  target="_blank">www.e-codices.unifr.ch</a>)</em></small> </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <p>Gothic Cursiva is for the most part a phenomenon of the 14th and 15th centuries. These scripts appear with all the varieties of Gothic page design that we see with Textualis, of which two styles are shown above: long columns with blue and red pen flourish decoration, at left, in a less formal manuscript, and framed columns of text with a border of the kind we might expect to see in a luxury book of hours of the same period.</p>
      <p>The phenomenon of documentary scripts being formalized for use as book scripts recurs throughout the history of Latin script. We saw it early in this course in the development of Half-Uncial and the National Hands out of Later Roman Cursive. We can generalize and say that innovation in script happens in two ways. Experimentation and proliferation of different scripts happen in documentary and less-formal contexts. Some of those scripts get adapted to use as book scripts. And then, periodically, reform inaugurates a new era of clarity and consolidation in the realm of book scripts. We saw this in the proliferation of post-Roman scripts in the centuries before the Carolingian reforms, followed by the establishment of Caroline Minuscule as a new international standard. We see it again when the proliferation of Gothic scripts in the later Middle Ages prompts a reform by Italian Humanists, which we will examine in the final lesson.</p>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <h4 class="lessonSubheading">&#8220;Cursive&#8221; and &#8220;Cursiva&#8221;</h4>
      <p>As we discussed back at the beginning of the course, paleographers use the term &#8220;cursive&#8221; in various and inconsistent ways. Cursive, as a technical term, means a script written with comparatively few lifts of the pen. That is a distinction based on ductus. Cursive can also be used to mean simply &#8220;rapidly written&#8221; or &#8220;messy,&#8221; as in the Roman cursives. The term cursive has long been used for the whole class of scripts we are considering in this lesson. When these scripts come to be executed in a very careful, formal way, however, they are no longer cursive in the sense of hasty or messy. Some varieties are almost as highly-constructed as formal Textualis. This class of Gothic scripts uses elements (like loops) that are derived from cursive writing, but which are purely ornamental in the higher-grade versions.</p>
      <p>In an effort to cut through the many confusing uses of the term &#8220;cursive,&#8221; Albert Derolez decided to call these later Gothic book scripts <b>Cursiva</b>, and we follow his usage here.&#42; Textualis and Cursiva are thus the two major categories of book script in the Gothic period. Each has regional variants and each has very informal and very formal grades, and a range of levels of formality in between. In what follows, we identify the small group of features that identify a script as belonging to the category Cursiva, and then we look at some of its regional varieties.</p>
      <hr />
      <p>&#42;Note: Derolez&#8217;s categories classification scheme is more complicated than this and includes scripts that show elements of both Textualis and Cursiva. You can read about his schema in more detail in Albert Derolez, <i>The Palaeography of Gothic Manuscript Books</i> (Cambridge: Cambridge University Press, 2006).</p>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>