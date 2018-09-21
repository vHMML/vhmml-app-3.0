<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 2: Transcription Principles and Conventions"/>		
	<tiles:putAttribute name="previousSection" expression="purposes"/>	
	<tiles:putAttribute name="nextSection" expression="exercise"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">WORD SEPARATION</h4>
				<p>
					<strong>DO add modern word separation as you transcribe.</strong> Early manuscripts have no 
					word separation at all. Later medieval manuscripts generally have pretty good word separation, 
					but it does not always accord with modern conventions. Sometimes, there are spaces between 
					syllables of the same word. You will need to apply your knowledge of Latin to figure out 
					where words end and which word-parts belong together.
				</p>
      
				<p>
					<strong>DO indicate when the scribe has broken a word at line end.</strong> Later medieval scribes 
					often use hyphens the same way we do to indicate a word  break at line end. You can reproduce that 
					when you see it by transcribing the scribe's hyphen. If the scribe breaks a word without adding a 
					hyphen, you should add a hyphen in parentheses: (-)
				</p>
				<p>&nbsp;</p>
				<h4 class="lessonSubheading">LINEATION</h4>
      
				<p>
					<strong>DO indicate where the lines end in the manuscript.</strong> Knowing where the scribe's lines 
					end may turn out to be helpful later on in understanding scribal errors or in figuring out which manuscripts 
					are copied from which. The easiest (least confusing) way to do this is to transcribe each line in the 
					manuscript on a separate line, which is what we ask you to do in the transcription exercises in this 
					course. This facilitates checking your transcription, and it allows you to see at a glance where the 
					scribe's eye (or yours) may have skipped a line. However, this may not always be feasible. An alternative 
					is to use a vertical line to indicate line breaks in the manuscript.
				</p> 
      			<p>&nbsp;</p>
				<h4 class="lessonSubheading">RESPECTING THE SCRIBE'S USAGE</h4>
      
				<p>
					<strong>DO NOT correct the scribe's spelling, vocabulary, usage, syntax, etc.</strong> The scribe's way 
					of using Latin is one of the most important things you are trying to capture in your transcription. Tiny 
					differences may turn out to have huge implications for the history of the text you are working on.
				</p>
      
				<p>
					<strong>DO NOT add modern capitalization.</strong> Whether a scribe writes in all majuscule or all minuscule, 
					you should transcribe everything in lower case. The exception is when the scribe clearly uses larger letters 
					to mark important distinctions in the text. You should use capitals to reproduce such distinctions.
				</p> 
      
				<p>
					<strong>DO NOT add modern punctuation.</strong> Instead, reproduce the scribe's punctuation as best you can 
					with the symbols available to you.
				</p> 
      
				<p>
					When you've digested these principles, click ahead to try a short review quiz to be sure you've got them 
					before we continue.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
	