<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Insular Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 7: What Happens Next?" />
	<tiles:putAttribute name="previousSection" value="layout" />

	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>Insular minuscule continues to be used in Ireland for the
					rest of the Middle Ages. In England from the end of the tenth
					century, Insular minuscule comes to be restricted to the vernacular
					only. Once contact is reestablished with Continental centers after
					the period of Viking raids, English scribes begin to use Caroline
					minuscule for Latin texts. (We will look at Caroline Minuscule in
					the next unit.) We have many manuscripts from later Anglo-Saxon
					England (from around the 970s to the end of the 11th C.) with Latin
					texts in Caroline minuscule accompanied by Old English texts in
					Insular minuscule. Similarly, Irish scribes who went to the
					Continent continued to use Insular minuscule for Old Irish glosses
					in manuscripts whose main Latin texts were written in Caroline
					minuscule.</p>
				<p>Although peculiarly Insular scripts fade as scribal culture
					increasingly becomes Europe-wide from the Carolingian period on,
					the innovations of Insular scribes in layout, word separation,
					punctuation, abbreviation, and other paratextual features were
					extremely influential in the scribal practice on the Continent in
					subsequent centuries.</p>

				<div class="row">
					<div class="col-lg-12">
						<hr />
						<p>
							If you read Latin, go to the <i><a href="${pageContext.request.contextPath}/school/lesson/insular-transcription/insular-review">Insular Scripts Transcription</a></i>
							lesson to try transcribing Insular Half-Uncial and Insular
							Minuscule. Otherwise, go directly to the <i><a href="${pageContext.request.contextPath}/school/lesson/carolingian-paleography/historical-orientation">Carolingian
								Paleography</a></i> lesson.
						</p>
					</div>
				</div>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>