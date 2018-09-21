<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Humanist Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 3: Humanist Cursive" />
	<tiles:putAttribute name="previousSection" value="humanist-minuscule" />
	<tiles:putAttribute name="nextSection" value="layout-decoration" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				 <p>Humanist Cursive, which is essentially the script we know as Italic, is cursive in the sense that it is written with fewer lifts of the pen than Humanist Minuscule. It would not qualify as a cursive within the typology of Gothic scripts we studied in the last lesson, because it has no loops on its ascenders.</p>
  <p>The letterforms are essentially those of Humanist Minuscule, but slanted, and with descenders on <b>f</b> and <b>s</b>. Note that Humanist Cursive preserves the Gothic convention of using round <b>s</b> at word end and tall <b>s</b> in initial and medial position. The script presents minimal problems to the modern reader, and should present none at all to the student who has finished this course and is familiar with tall/long <b>s</b> and with basic abbreviations.</p>
  <p>&nbsp;</p>
  </div>
  </div>
  <div class="row">
  <div class="col-lg-12 lesson-image">
          <div id="openseadragon1" style="width: 900px; height: 500px; background-color:#666;border-radius: 1%;"></div>
<script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", 
		minZoomLevel: "0.4",
		maxZoomLevel: "9",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/sjrb_mslat4_5r/GeneratedImages/dzc_output.xml"
    });
</script> 

<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/sjrb_mslat4_5r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="manuscript page from "></noscript>
   <small><em>HMML,  MS. Lat. 4, f. 5r. Used under  a <a href="https://creativecommons.org/licenses/by-nc/4.0/"  target="_blank">CC BY-NC 4.0 license</a>.</em></small>
  </div>
				<p> &nbsp;</p>	
			</div>
	</tiles:putAttribute>
</tiles:insertTemplate>