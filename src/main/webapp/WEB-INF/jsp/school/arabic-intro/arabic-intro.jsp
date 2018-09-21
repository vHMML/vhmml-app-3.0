<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Arabic: Introduction" />
	<tiles:putAttribute name="sectionName" value="Section 1: Overview" />
	<tiles:putAttribute name="nextSection" value="arabic-exercise" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">OVERVIEW</h4>
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>