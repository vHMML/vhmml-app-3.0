<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Paleography"/>
	<tiles:putAttribute name="sectionName" value="Exercise 2: Uncial or Half-Uncial?"/>
	<tiles:putAttribute name="previousSection" value="half-uncial"/>	
	<tiles:putAttribute name="nextSection" value="codicology-page-layout"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">For each of these pairs, which column has the letterform  which is <%-- In these pairs of images, which letterforms are in --%><u>Half-Uncial</u> script?</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
<table>
  <%-- <caption>
    Half-Uncial?
  </caption>--%>
  <tbody>
	<tr>
	  <th class="schoolLessonExerciseTable">&nbsp;</th>
      <th class="schoolLessonExerciseTable text-center">A</th>
      <th class="schoolLessonExerciseTable text-center">B</th>
    </tr>
    <tr>
      <td class="schoolLessonExerciseTable">1.</td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_a.png"  height="100" alt="Letter A"></td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BL_MS-Harley-1775-193r_a.png" width="111" height="100" alt="Letter A"></td>
    </tr>
    <tr>
      <td class="schoolLessonExerciseTable">2.</td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BL_MS-Harley-1775-193r_b.png" width="93" height="100" alt="Letter B"></td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_b.png"  height="100" alt="Letter B"></td>
    </tr>
    <tr>
      <td class="schoolLessonExerciseTable">3.</td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_d.png"  height="100" alt="Letter D"></td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BL_MS-Harley-1775-193r_d.png" width="111" height="100" alt="Letter D"></td>
    </tr>
    <tr>
      <td class="schoolLessonExerciseTable">4.</td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/BL_MS-Harley-1775-193r_g.png" width="94" height="150" alt="Letter G"></td>
      <td class="schoolLessonExerciseTable"><img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_g.png" width="94" height="150" alt="Letter G"></td>
    </tr>
  </tbody>
</table>
</div>
</div>
		
		<br/>
		<div class="row">
			<div class="col-lg-12">
				<button class="btn left school showAnswer">Display the Answer</button>
				<span class="exerciseAnswer">
					<p>These are the Half-Uncial forms:</p>
					1. A&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_a.png"  height="70" alt="Letter A">&nbsp; 
					<br /><br />2. B&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_b.png"  height="70" alt="Letter B"> &nbsp; 
					<br /><br />3. A&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_d.png"  height="70" alt="Letter D"> &nbsp; 
					<br /><br />4. B&nbsp;<img src="${pageContext.request.contextPath}/static/img/school/christian-late-antiquity/St-Gallen-CodSang-1395_g.png"  height="70" alt="Letter G"> 
					<hr/>
					<p>
						How did you do? As this course goes on, we'll practice identifying
						scripts by individual letterforms as well as by the overall look of the page. If you are able to spot the
						characteristic letterforms of Half-Uncial, you'll have a good foundation for identifying the many
						medieval minuscule scripts that are based on Half-Uncial. We'll have more practice telling Uncial
						from Half-Uncial in the next unit.
					</p>					
				</span>								
    		</div>
		</div>
		<p> &nbsp; </p>
	</tiles:putAttribute>
</tiles:insertTemplate>