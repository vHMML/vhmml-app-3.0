<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 1: Introduction; New Abbreviations"/>	
	<tiles:putAttribute name="nextSection" value="abbr-suspensions"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">    	
				<p>
					In the last Transcription lesson, 
					you practiced transcribing a majuscule script without word separation (<em>scriptio continua</em>). You practiced using parentheses to 
					indicate where you expanded an abbreviation by supplying letters the scribe omitted.
				</p> 

				<p>
					In this lesson, we continue working with manuscripts in <em>scriptio continua</em>, which was normal scribal practice 
					until the 8th century (and in many places later than that). We work with both majuscule script (Uncial) and minuscule 
					(Half-Uncial). In manuscripts in Uncial and Half-Uncial scripts, the letterforms usually do not present serious problems, 
					though Half-Uncial has a few letterforms that are easily mistaken for each other. We will review these later in this lesson.
					If you become comfortable transcribing Half-Uncial manuscripts, you will be prepared to tackle the many medieval scripts 
					that descend from Half-Uncial. 
				</p>

				<p>
					In this lesson, we also introduce new abbreviations, and new methods of indicating that a word is abbreviated. The 
					abbreviations and styles of abbreviation we cover in this lesson are the most commonly-used ones for the whole of 
					the Middle Ages (and for the rest of this course). It would be a good idea to memorize them. This lesson, and subsequent 
					Transcription lessons, will include some quick drills on abbreviations in addition to the transcription exercises themselves, 
					to help you consolidate your knowledge of the most common forms of abbreviation.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>