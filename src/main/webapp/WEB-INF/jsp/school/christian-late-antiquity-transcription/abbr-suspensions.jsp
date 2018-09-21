<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 2: Abbreviations: Suspension of -m, suspension of -us in -bus endings"/>
	<tiles:putAttribute name="previousSection" value="intro"/>	
	<tiles:putAttribute name="nextSection" value="abbr-nomina-sacra"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">    	
				<p>
					Among the few abbreviations used in high-grade late-antique manuscripts are the omission of word-final 
					-<b>m</b> and the omission of -<b>us</b> in the -<b>bus</b> ending of the dative and ablative plural.
				</p> 

				<p>
					Omission of final -<b>m</b> after a vowel is indicated by the common mark of abbreviation, a horizontal line 
					above the vowel that the -<b>m</b> would follow, like this: <b>uerb<span class="overline">u</span></b> = <b>uerbum</b>. 
					The common mark of abbreviation is also known as a titulus. Remember, when transcribing, we put in parentheses any 
					letter that we are supplying but which the scribe omitted in abbreviation. So here, the <b>m</b> goes in 
					parentheses, like this: <b>uerbu(m)</b>
				</p>

				<p>
					Omission of -<b>us</b> after <b>b</b> is indicated by an apostrophe-like mark following the <b>b</b>, like 
					this: <b>b'</b> So <b>hominib'</b> = <b>hominibus</b>. Again, since we are supplying the -<b>us</b> in expanding the abbreviation, we put the 
					letters we are supplying in parentheses, like this: <b>hominib(us)</b>
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>