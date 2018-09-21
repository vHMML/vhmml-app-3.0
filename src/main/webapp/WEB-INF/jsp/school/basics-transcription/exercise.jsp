<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 3: Exercise"/>	
	<tiles:putAttribute name="sectionDescription" value="REVIEW PRINCIPLES OF TRANSCRIPTION"/>	
	<tiles:putAttribute name="previousSection" expression="principles-conventions"/>	
	<tiles:putAttribute name="nextSection" expression="principles-conventions2"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">	
				<p>Which one of these things should you NOT do when transcribing?</p>
				<ol class="orderedlistalpha">
					<li>add modern capitalization</li>
					<li>add modern word separation</li>
					<li>indicate where the scribe breaks a word</li>
					<li>indicate where the scribe breaks a line</li>
				</ol>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display the Answer</button>
				<span class="exerciseAnswer">
					<span class="answerTitle">The correct answer is ...</span>
					<span class="answer">
						You should NOT ...
						<p>a. &nbsp;<span class="macronTitulus"> add modern capitalization</span></p>
					</span>
				</span>
				<p>&nbsp;</p>
			</div>
		</div>    
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>
	