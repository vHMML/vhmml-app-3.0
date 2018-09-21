<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Classical Antiquity: Paleography"/>
	<tiles:putAttribute name="sectionName" value="Section 3: Square Capitals"/>		
	<tiles:putAttribute name="previousSection" value="roman-cursives"/>	
	<tiles:putAttribute name="nextSection" value="rustic-capitals"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">	
		<div class="row">
			<div class="col-lg-12">			
				<p>
					<b>Square Capitals</b>: The most formal of the ancient Roman scripts is based on inscriptional 
					capitals used on monuments in ancient Rome. These are <b>Square Capitals</b>, or, in 
					Latin, <i><b>Capitalis Quadrata</b></i>. Square Capitals are a <b>majuscule</b> script. 
					This script is the model for the capital letters in our modern typography, so you should have no trouble 
					in either recognizing it or reading it.
				</p>
				
				<p>
					The only tricky thing about reading Square Capitals is that ancient manuscripts are written 
					in <i><b>scriptio continua </b></i>&#8212; without any separation between words.
				</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<div id="openseadragon1" style="width: 900px; height: 500px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon1",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "2", 
						minZoomLevel: "0.5",
						maxZoomLevel: "9",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="manuscript page from Saint Gall Number 1394, page 12"></noscript>
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 1394, p. 12. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)</em></small>
				
				<p>
					If you look at the example above, a late-antique manuscript of Vergil's <i>Aeneid</i>, 
					you'll see almost no difference from our upper-case letters. If 
					you read Latin and want to try reading from this manuscript, you can go on to the 
					<%-- <a href="schoolClassicalAntiquityTranscription.html">--%> <i>Classical Antiquity: Transcription</i><%-- </a>--%> lesson after this one.
				</p>
       
				<p>
					(One difference to remember for future lessons is that there is no upper-case <b>U</b>. In Latin, 
					<b>u</b> and <b>v</b> are just different versions of the same letter. Some scripts use one form, some the other. 
					It is not till the very end of the Middle Ages that we see the <b>v</b>-form and the <b>u</b>-form used in the same word. 
					Square Capitals use only the <b>V</b> form. This usage is probably familiar from Roman inscriptions you have seen.) 
				</p>

				<p>
					Note that the <b>aspect</b> of Square Capitals is very regular. This impression comes from the 
					fact that it's a majuscule, with the letters predictably confined between two imaginary lines, but also 
					from the fact that most letters are almost as wide as they are tall. The O is very nearly circular, 
					and its spacious form sets the rhythm for the whole script.
				</p>

				<p>
					Considering how familiar Square Capitals are from Roman inscriptions, it is a shock to learn that only 
					two manuscripts in Square Capitals survive from antiquity. Both are manuscripts of Vergil from the 4th
					and 5th century CE. (One is the fragmentary manuscript shown here, and the other is the so-called 
					Vergilius Augusteus, of which one fragment is in the Vatican Library and the other in Berlin.) 
					The extreme rarity of books in this script suggests that it was not in any way an ordinary book 
					script in the ancient world. It is more likely that these late-antique, super-luxury Vergil manuscripts 
					were written in imitation of ancient inscriptional capitals as a way of signifying the status of Vergil 
					in the canon of ancient authors. Note that these manuscripts are contemporary with the comparably high-grade 
					Christian manuscripts of the Bible that we will study in the next unit.
				</p>

				<p>
					We treat Square Capitals as an ancient script in the history of Latin bookhands because it seems clear 
					that the makers of these manuscripts, as well as subsequent users of Square Capitals, chose this script 
					because of its associations with Golden-Age Roman culture. Even though Square Capitals were probably 
					not really part of the system of scripts in Roman antiquity, they have had an outsized influence on the 
					whole subsequent history of the Roman alphabet. Their presence in our own writing system is evidence of 
					that. Square Capitals were imitated by scribes in the Carolingian period, who were consciously cultivating 
					classical models. The Carolingian scribes used Square Capitals as a display script for titles, headers, 
					and the like, and this script continued to be used for that purpose to the end of the Middle Ages and 
					into the Renaissance. When Renaissance Humanists looked to Carolingian models for their own revival of 
					Classical book aesthetics, as well as to Roman inscriptions surviving in Italy, they gave Square Capitals 
					new life. The adoption of Humanist scripts in early printing assured that Square Capitals would survive 
					into the modern era.
				</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12 lesson-image">
			<p class="imageTitle">Square Capitals used as a display script in a 9th-century Carolingian manuscript</p>
			
				<img src="${pageContext.request.contextPath}/static/img/school/classical-antiquity/StGallen-CodSang116-p3croptop.jpg" width="1000" alt="upper part of manuscript page from Saint Gall Number 116, page 3"><br />
				<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 116, p. 3. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>) </em></small>
							</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<p class="imageTitle">Square Capitals used as a display script in a 15th-century Italian manuscript</p>
				<img src="${pageContext.request.contextPath}/static/img/school/classical-antiquity/BL_add_ms_34294_vol_1-f014vcroppedtop.jpg" width="1000" height="296" alt="upper part of manuscript page from British Library manuscript 34294, volume 1  folio 14 verso"><br />
				<small><em>&copy; The British Library Board, ADD. 34294,  f. 14v.</em></small>
				<p>&nbsp; </p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>