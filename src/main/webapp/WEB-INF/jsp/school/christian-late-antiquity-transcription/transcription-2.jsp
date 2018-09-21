<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Transcription Exercise 2: BAV Pal. lat. 210, f. 4r. Augustine, <i>De bono coniugali</i>. Uncials, Italy, 6th C."/>
	<tiles:putAttribute name="previousSection" value="transcription-1"/>	
	<tiles:putAttribute name="nextSection" value="transcription-3"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">			
				<p>Transcribe lines 3-12.</p>
				
				<p>
					Here's another Uncial manuscript, with a different layout. Even though he does not 
					use spaces between words, this scribe uses large spaces to separate sentences or major 
					sense-units, and emphasizes those breaks with larger letters. You may use capital 
					letters to reproduce the scribe's <em>litterae notabiliores</em>.
				</p> 

				<p>
					There are four abbreviations in this passage: three suspensions of final 
					-<b>m</b> or -<b>us</b>, and one <i>nomen sacrum</i>.
				</p>

				<p>Here are a few more things to watch out for as you transcribe:</p>

				<ul>
					<li> At the end of line 3, a letter is obscured in a fold of the parchment. It is an <b>r</b>.</li>
					<li> At the end of line 6, the scribe seems to make a spelling mistake. Can you tell whether he's used the correct letter or not? Compare the way he makes the letter(s) in question in other places on the page.</li>
					<li> Watch out for false word separations! Make sure you end up with complete Latin words that make sense in context. </li>
				</ul>
	<p class="imageTitle">Transcribe lines 3-12. </p>
				<div id="openseadragon1" style="width:650px; height: 680px; background-color:#666;border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id: "openseadragon1",
						prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel: "0.8", // normally defaults to 0
						minZoomLevel: "0.6",
						maxZoomLevel: "9",
						zoomPerClick: "1.4",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/bav-pal.lat210f004ranno/GeneratedImages/dzc_output.xml"
					});
				</script> 

				<noscript>JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="static/openseadragon/images/bav-pal.lat210f004ranno/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="manuscript page from Vatican Library, Pal. lat. 210, folio 4 recto"></noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana,  Pal. lat. 210, f. 4r.</em></small>
			</div>
		</div>
		
		<hr />
		
		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display Transcription Solution</button>
				<span class="exerciseAnswer">
					<span class="answerTitle">Transcription Answer Key</span>
					<span class="answer">
						<p>
							3 &nbsp;donec illa benedictionis multiplicatione terra<br />
							4 &nbsp;impleretur&#729;Si enim uestib(us) israhelitarum<br />
							5 &nbsp;praestitit d(eu)s per annos quadraginta sine ullo<br />
							6 &nbsp;detrimento proprium statum· Quanto magis<br />
							7 &nbsp;praestaret corporib(us) oboedientiam praecepto suo<br />
							8 &nbsp;felicissimum quoddam temperamentum certi<br />
							9 &nbsp;status· donec in melius conuerterentur&#729;<br />
							10 &nbsp;Non morte hominis qua corpus ab anima deseritur·<br />
							11 &nbsp;sed beata commutatione a mortalitate ad inmor(-)<br />
							12 &nbsp;talitatem· Ab animali ad spiritalem qualitate(m)· <br />
						</p>
					</span>
				</span>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>