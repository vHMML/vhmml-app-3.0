<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Humanist Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 5: What Happens Next to These Scripts?" />
	<tiles:putAttribute name="previousSection" value="layout-decoration" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				    <p>The Humanist scripts joined the whole late-medieval and Renaissance inventory of scripts, including Textualis and the many regional varieties of Cursiva. Just as these scripts were invented by men already proficient in several chancery scripts and book scripts of their day, they were used by professional scribes in books for which their particular aesthetics and resonance was suited &#8211; above all, luxury copies of Classical texts.</p>
   <p>Both Humanist Minuscule and Humanist Cursive were taken up by late-fifteenth and early-sixteenth-century printers, which is how their use has been perpetuated to this day.</p>
   <p>A &#34;Roman&#34; typeface &#8211; based on Humanist Minuscule &#8211; was used first by the printers Sweynheym and Pannartz in 1465. Sweynheym and Pannartz were Germans working at Subiaco in Italy. Their typeface owes much to Humanist Minuscule, but has something of the proportions of a Southern Textualis, with a larger x-height (minim-height) than is typical of Humanist Minuscule. The 1470 version by Nicholas Jensen is recognized as a particularly beautiful typographic interpretation of the script, and was the model for numerous Roman types in the 16th century and beyond.</p>
   <p>Aldus&#8217;s portable editions of the classics, printed beginning in 1501, used a typeface designed by Francesco Griffo that appears to be based on Humanist Cursive, though Aldus apparently thought of it as a version of <i>cancellaresca</i>, the Italian chancery cursive. The success of these handy editions helped popularize the new &#34;italic&#34; type.</p>
   <p>The typefaces based on Humanist scripts were used alongside those based on Gothic scripts for decades &#8211; indeed, centuries &#8211; following the invention of printing, and eventually won out over types based on Textualis, becoming the standard typefaces in the West.</p>
				
			</div>
		</div>
		
		<div class="row">
	<div class="col-lg-12">
		<hr />
		<p>
		
		This concludes our survey of Latin scripts. If you read Latin and would like to try transcribing Humanist Minuscule, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/humanist-transcription/humanist-transcription">Humanist Minuscule Transcription</a></i> lesson.
	</p>
	<p> &nbsp;</p>
	</div>
 </div>	
	</tiles:putAttribute>
</tiles:insertTemplate>