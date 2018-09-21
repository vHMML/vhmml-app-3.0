<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Visigothic and Beneventan: Paleography" />
	<tiles:putAttribute name="sectionName" value="Exercise 2" />
	<tiles:putAttribute name="previousSection" value="beneventan-script" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				 <p>Which of these is written in Beneventan script?</p>
  <p>a.<br />
  <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/e2-1.jpg" alt="part of line cropped from manuscript"> 
  </p>
  <p>b.
  <br />
  <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/e2-2.jpg" width="750" alt="part of line cropped from manuscript"></p> 
  <p>c. <br />
  <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/e2-3.jpg" width="750" alt="part of line cropped from manuscript"></p> 
 <button class="btn left school showAnswer">Display the
							Answer</button>
						<span class="exerciseAnswer">
  
  <p>  b. <br />
  <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/e2-2.jpg" width="570" alt="cropped line from Beneventan manuscript"></p>
  <p>Item a. is Textualis and c. is Caroline Minuscule.</p>
   <hr /><p> Images respectively from: <small><em>HMML, Bethune Breviary, MS 2, f. 7ra, l. 8. Used under  a <a href="https://creativecommons.org/licenses/by-nc/4.0/"  target="_blank">CC BY-NC 4.0 license</a>; 
 &copy; The British Library Board, Add. 30337, f. 8r, l. 11; and St. Gallen, Stiftsbibliothek, Cod. Sang. 116, p. 3, l. 15. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)</em></small>
 </span>
  </div>
  </div>
  <div class="row">
  <div class="col-lg-12">
  <p> &nbsp;</p>
  <p>The next lesson, <i><a href="${pageContext.request.contextPath}/school/lesson/gothic-cursiva-paleography/cursiva-overview">Gothic Cursiva Paleography</a></i>, covers the other major category of Gothic scripts of the later Middle Ages.</p>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>