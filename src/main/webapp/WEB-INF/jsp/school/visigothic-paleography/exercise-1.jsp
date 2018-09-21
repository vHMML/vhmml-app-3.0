<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Visigothic and Beneventan: Paleography" />
	<tiles:putAttribute name="sectionName" value="Exercise 1" />
	<tiles:putAttribute name="previousSection" value="visigothic-script" />
	<tiles:putAttribute name="nextSection" value="beneventan-script" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				      <p>Which of these words is written in Visigothic script?</p>
      <p>a.<br />
        <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/dirigat.jpg" width="190" alt="word cropped from manuscript: dirigat"> <b>dirigat</b> </p>
      <p>b. <br />
        <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/uiginti.jpg" width="190" alt="word cropped from manuscript: uiginti"> <b>uiginti</b> </p>
      <p>c. <br />
        <img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/gentes.jpg" width="190" alt="word cropped from manuscript: gentes"> <b>gentes</b> </p>
     
	  	<button class="btn left school showAnswer">Display the
							Answer</button>
						<span class="exerciseAnswer">
      <p> b. (<b>uiginti</b>).<br /><img src="${pageContext.request.contextPath}/static/img/school/visigothic-paleography/uiginti.jpg" width="190" alt="word cropped from manuscript: uiginti"></p>
      <p>Item a. (<b>dirigat</b>) is Caroline Minuscule and c. (<b>gentes</b>) is Anglo-Saxon (Insular) Minuscule.</p>
      <hr /><p> Images respectively from: <small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 117. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>); &copy; The British Library Board, Add.
						11695, f. 194ra l. 20; and The Bodleian Libraries, The University of Oxford, Junius 27, f. 66r, l. 9.</em></small></p>
						
      </em>
	  </span>
				<p> &nbsp;</p>	
			</div>
		</div>
		<p> &nbsp;</p>	
	</tiles:putAttribute>
</tiles:insertTemplate>