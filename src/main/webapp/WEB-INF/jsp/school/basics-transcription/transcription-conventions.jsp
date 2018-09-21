<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 5: Summary of Transcription Conventions"/>	
	<tiles:putAttribute name="previousSection" expression="principles-conventions2"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">

				<p>
					That was a lot to take in at once. Below is a summary of the symbols you will use in your 
					transcriptions in the coming lessons. If you bear in mind the principles covered earlier 
					in this lesson about respecting and recording the scribe's usage, you'll have plenty of 
					chances to practice using these conventions, and we'll remind you of them with each exercise 
					in the lessons to come.
				</p>     
	
				<table class="table-centered" > 
					<tr class="conventions">
						<td>(&nbsp;)</td>
						<td class="conventions">Expanded abbreviation</td>
						<%--<td>d(omi)ni</td> --%>    
					</tr>
					<tr class="conventions"> 
						<td>[&nbsp;]</td>
						<td class="conventions">Scribal erasure</td>
						<%--<td>do[mi]ni</td> --%>    
					</tr>
					<tr class="conventions">
						<td> [&nbsp;/&nbsp;]</td>
						<td class="conventions">Scribal erasure and correction (left of slash left blank if  erased letter is illegible,<br /> recorded if it is legible &#8212; e.g. [h/d]omini for scribal correction of <b>h</b> to <b>d</b>)</li></ul></td>
						<%--<td>[/d]omini</td> --%>
					</tr>
					<tr  class="conventions">
						<td > [[&nbsp;**&nbsp;]]&nbsp;&nbsp;</td>
						<td class="conventions">Portion of text lost through damage  and illegible.  Number of asterisks = approximate number of lost letters,<br /> where possible to estimate. Otherwise leave space between brackets blank. 
						</td><%--<td>domin[[*]]</td> --%>
					</tr> 
					<tr  class="conventions">
						<td>/&nbsp;\</td>
						<td  class="conventions">Scribal insertion on the line</td>
						<%--<td>do/mi\ni</td> --%>   
					</tr>
					<tr  class="conventions">
						<td >\&nbsp;/</td>
						<td class="conventions">Scribal insertion between the lines</td>
						<%--<td>do\mi/ni</td> --%>
					</tr>
					<tr class="conventions">
						<td>\\&nbsp;//</td>
						<td class="conventions">Scribal insertion in margin</td> 
					</tr>
				</table>
			</div>
		</div>
	
	<hr />

		<div class="row">
			<div class="col-lg-12">
				<p>
					<em><strong>Note:</strong> You will encounter variations and expansions on this system 
					in other paleographic manuals, encoding systems, and publishers' stylesheets. If you 
					practice transcribing with this set of symbols in the exercises in this course, you will 
					develop the habit of observing the manuscript closely and recording what you can really 
					see. That is the most important lesson. You can then apply those skills to different 
					editorial situations.</em>
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
	