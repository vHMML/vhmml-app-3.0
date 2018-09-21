<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 2: Insular Half-Uncial" />
	<tiles:putAttribute name="previousSection" value="overview" />
	<tiles:putAttribute name="nextSection" value="anglo-saxon" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
          <p>This is the script used in the great Insular Bible manuscripts made in areas of Irish cultural influence especially in the 7th and 8th centuries, including the Lindisfarne Gospels and the Book of Kells. Insular Half-Uncial is also called Insular majuscule.</p>
          <p class="imageTitle">The Lindisfarne Gospels, 1st quarter of 8th century</p>
      <div id="openseadragon1" style="width: 900px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1",
		minZoomLevel: "0.4",
		maxZoomLevel: "7", 
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output.xml"
    });
</script>
<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/blcottonnerodiv/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from The British Library, London, England, 700 CE"></noscript>
 <small><em>&copy; The British Library Board, Cotton Nero D  IV, f. 34r.</em></small>
       <p>&nbsp;</p>
	   <p>The main text script is Insular Half-Uncial, with Anglo-Saxon Minuscule of a later period used for the Old English glosses between the lines.</p>
       <p>&nbsp;</p>
	   <h4 class="lessonSubheading">Aspect</h4>
   <p>Insular Half-Uncial can be understood as Half-Uncial inflated to a luxury-grade majuscule script with substantial influence from Uncial. Its aspect is, accordingly, round and spacious in the manner of Uncial, although the letters intrude more into each other's space than is typical of Uncial, so the script does not quite have the lateral spaciousness of Uncial.</p>
   <p>&nbsp;</p>
   <h4 class="lessonSubheading">Characteristic letterforms</h4>
   <p>There are two groups of characteristic letterforms in Insular Half-Uncial:</p>
   <ol>
    <li>Distinctive Insular versions of Half-Uncial letters, particularly an <b>f</b> whose hasta sits on the baseline, and an <b>r</b> whose shoulder bends all the way over like the right-hand part of a lower-case <b>n</b>. The Insular <b>r</b> is very liable to confusion with <b>p</b> and <b>n</b> for the modern reader. Together with the Half-Uncial <b>g</b>, these letters are also used in all varieties of Insular minuscule.</li>
    <li> Uncial letterforms used in alternation with the dominant Half-Uncial forms of the script. These include most notably the round Uncial forms <b>d</b> and <b>s</b> alternating with the upright <b>d</b> and tall <b>s</b> of Half-Uncial, and the majuscule <b>R</b> alternating with the Insular <b>r</b>.</li>
    </ol>
    <p>Details from the Lindisfarne Gospels illustrate these forms:</p>
    <p>This line from the Lindisfarne Gospels shows the Insular <b>f</b> with low hasta, Uncial <b>d</b>, <b>s</b>, and <b>R</b>, as well as a Half-Uncial <b>d</b> at the end:</p>
   	<div class="lesson-image">
    <img src="${pageContext.request.contextPath}/static/img/school/insular-paleography/lindisfarnegospels-1.jpg" alt="line from manuscript page from The British Library, 700 CE"> <small><b>finiens decursum ad</b></small>
</div>
	<div class="lesson-image">
    <p>In this detail, there is a round Uncial <b>s</b> at the beginning and a tall, Half-Uncial <b>s</b> at the end, in ligature with <b>u</b>. An Uncial <b>R</b> in <b>ordine</b> contrasts with the <b>n</b>-shaped <b>r</b> in <b>primus</b>:</p>
    <img src="${pageContext.request.contextPath}/static/img/school/insular-paleography/lindisfarnegospels-2.jpg" alt="line from manuscript page from The British Library">
    <small><b>sicut in ordine primus</b></small>
    </div>
	<div class="lesson-image">
    <p>This detail shows the Half-Uncial/Insular <b>g</b> and <b>a</b> as well as the use of two different styles of <b>N</b>/<b>n</b> in the same word:</p>
    <img src="${pageContext.request.contextPath}/static/img/school/insular-paleography/lindisfarnegospels-3.jpg" alt="line from manuscript page from The British Library">
<small><b>generationem</b></small>

	</div>
    <p>These details also show clearly how the predominantly Half-Uncial letterforms have been treated as a majuscule script, in which the letters are overwhelmingly the same height as each other, contained between two imaginary lines.</p>
    
<hr />
      <p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>