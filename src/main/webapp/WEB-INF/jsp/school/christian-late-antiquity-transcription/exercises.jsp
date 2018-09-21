<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 4: Exercises"/>
	<tiles:putAttribute name="previousSection" value="abbr-nomina-sacra"/>	
	<tiles:putAttribute name="nextSection" value="transcription-1"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Exercise 1: Practice with simple suspensions</h4> 
				<p>Choose the correct expansion for the abbreviation <strong>hominib'</strong> 
				<ol  class="orderedlistalpha">
					<li>hominibus</li>
					<li>hominimum</li>
					<li>hominib(us)</li>
				</ol>
				<button class="btn left school showAnswer">Display the Answer</button>
				<span class="exerciseAnswer">
					<p class="correctAnswer">c. &nbsp;hominib(us)</p>
					<%-- for Exercise 1.--%>
				</span>        		   
			</div>       
        </div>
        
        <hr/> 
		
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Exercise 2: Practice with <em>nomina sacra</em></h4>
				<p>Which of these is the abbreviation for <em>deus</em>?
				<ol  class="orderedlistalpha">
					<li><span class="overline">DNS</span></li>
					<li><span class="overline">DS</span></li>
					<li><span class="overline">DUS</span></li>
				</ol>     
				<button class="btn left school showAnswer">Display the Answer</button>
				<span class="exerciseAnswer">
					<p class="correctAnswer">b. &nbsp;<span class="overline">DS</span></p>
				</span>   
			</div>
		</div>
		<hr/> 
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Exercise 3: More practice with <em>nomina sacra</em></h4>
				<p>Which of these is the correct way to expand the abbreviation <span class="overline">IHS</span> <span class="overline">XPS</span>?
				<ol  class="orderedlistalpha">
					<li>ihes(u)s christ(u)s</li>
					<li>i(esu)s c(hristu)s</li>
					<li>ie(su)s chr(istu)s</li>
				</ol>         
     			<button class="btn left school showAnswer">Display the Answer</button>
				<span class="exerciseAnswer">
					<p class="correctAnswer">c. &nbsp; ie(su)s chr(istu)s</p>
					<hr/>
					<p>
						How did you do on these practice drills? Expanding <em>nomina sacra</em> can be tricky, especially 
						remembering which letters go in parentheses. Next try transcribing some real manuscripts. You'll have 
						plenty of practice expanding abbreviations here and in subsequent lessons.
					</p>
				</span>     			   
			</div>
		</div>     
		<p>&nbsp;</p>   
	</tiles:putAttribute>
</tiles:insertTemplate>