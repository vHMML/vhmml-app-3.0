<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Classical Antiquity: Paleography"/>
	<tiles:putAttribute name="sectionName" value="Section 4: Rustic Capitals"/>
	<tiles:putAttribute name="previousSection" value="square-capitals"/>	
	<tiles:putAttribute name="nextSection" value="compare-capitals"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					Several of the most famous copies of Vergil's works from the 5th and 6th centuries are 
					in Rustic Capitals, and it is probably significant that only two of the surviving books 
					in Rustic Capitals are copies of the works of Christian authors. The manuscript below 
					is a famous manuscript of Vergil that has recently been digitized by the Vatican Library, 
					the so-called "Vatican Vergil." It is roughly contemporary with the Vergil manuscript 
					in Square Capitals that we looked at above.
				</p>
			</div>
		</div>
		
		<hr />
		
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<div id="openseadragon1" style="width: 900px; height: 500px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon1",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "2", // normally defaults to 0
						minZoomLevel: "0.6",
						maxZoomLevel: "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output.xml"
					});
				</script> 
				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/bav-vat.lat.3225_0031_fr_0014r/GeneratedImages/dzc_output_files/9/0_0.jpg" alt="Manuscript image from Vatican  Library"></noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana,  Vat. lat. 3225, f. XIVr.</em></small>
			</div>
		</div>
   
		<div class="row">
			<div class="col-lg-12">
				<p>
					<strong>Aspect and letterforms</strong>: Compared to Square Capitals, Rustic Capitals have 
					a slender, laterally-compressed appearance. Letters are distinctly taller than they are wide. 
					While Rustic Capitals also appear inscribed in stone in the Roman world, as a bookhand they 
					do not give the impression of having been written in imitation of letters chiseled in stone. 
					All the letters in Rustic Capitals are easily recognizable as our upper-case letters.
				</p> 

				<p>
					Like Square Capitals, Rustic Capitals had a long after-life as a <strong>display script</strong> 
					in medieval manuscripts. The example of Rustic Capitals below is taken from a 9th-century manuscript 
					in which the capitals serve as a display script. Note that a manuscript written all in Rustic 
					Capitals from late antiquity would not have any separation between words of the sort you can see 
					in this manuscript.
				</p>
			</div>
		</div>
   
		<div class="row">
			<div class="col-lg-12 lesson-image">
			 <p  class="imageTitle">Rustic Capitals used as a display script in a 9th-century Carolingian manuscript</p>
				<%--<div id="openseadragon2" style="width: 900px; height: 300px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon2",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "2", // default 0
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-codsang152-p3/GeneratedImages/dzc_output.xml"
					});
				</script>
				 --%>
				<img src="${pageContext.request.contextPath}/static/img/school/classical-antiquity/StGallen-CodSang 152-p3croppedrusticcaps.jpg" alt="manuscript page from Saint Gallen Number 152, page 3"></noscript>
				<br /><small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 152, p. 3. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a> ) </em></small>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>