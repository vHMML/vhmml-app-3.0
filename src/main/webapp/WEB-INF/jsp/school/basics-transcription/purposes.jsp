<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 1: The Purposes of Transcription"/>	
	<tiles:putAttribute name="nextSection" expression="principles-conventions"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">    	
				<p>Transcription is the process of recording the text found in a manuscript.</p> 

				<p>Transcription has two purposes, which can feel in practice like they are at odds with one another: 

				<ol>
					<li>
				    	<strong>You want to convert the text in the manuscript into an easily-readable form that you or others will be able to use for further work on the text.</strong> That means recording a text that may be written in a script you find difficult to read in a script or typography with which you and others who use your work are familiar. You will want to produce a transcription that can easily be compared with transcriptions of the same text from other manuscripts. To facilitate comparison by the human eye, you must transcribe into an easily-readable alphabet and use a limited set of conventional signs to indicate unusual features of how the text appears in manuscript. To allow comparison by computer, you need to identify salient linguistic units as you transcribe.
				    </li> 
					<li>
						<strong>You want to record as much information as possible about the way the text appeared in <em>this</em> manuscript.</strong> You must assume you will not get another chance to look at the manuscript you are working on. In the era of digitized manuscripts, that is less likely than it once was, but in your future work with manuscripts you will undoubtedly encounter circumstances where you get a once-in-a-lifetime chance to visit a manuscript in a distant repository. You may not know until a much later stage of work on your text exactly what features will turn out to be important. That means that it pays to record as faithfully as possible exactly what you see in the manuscript.
					</li>
				</ol>
				
				<strong>In sum, you should aim to:</strong>
				<ul>
					<li>make as full a record as possible of what is in the manuscript </li>
					<li>create a form useful to you and easy to understand when the manuscript is no longer in front of you </li>
					<li>achieve the above with as little ambiguity as possible in the transcription</li>
				</ul>
				<p>
					In order to satisfy these aims, scholars who work with manuscripts have agreed on a set of conventions 
					for what to do when transcribing. In the next section, we explain what kinds of interventions you SHOULD 
					make in the text of the manuscript you're transcribing and what you should NOT do, and the symbols to 
					use to indicate what you have done. After you've read through these instructions, you'll have a chance 
					to practice using these conventions on small portions of manuscript text.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
	