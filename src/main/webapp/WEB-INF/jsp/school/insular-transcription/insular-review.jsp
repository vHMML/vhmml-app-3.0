<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Insular Scripts: Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Review Insular Letterforms" />
	<tiles:putAttribute name="nextSection" value="abbreviations" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				
						<p>&nbsp;</p>
						<p>Whether you are transcribing Insular Half-Uncial or Insular
							Minuscule, you should bear in mind the letterforms you practiced
							recognizing in the last unit, when you transcribed late-antique
							Half-Uncial.</p>
						<p>
							As we mentioned in the Insular Paleography lesson, the Insular
							scripts mainly derive from Half-Uncial. Both the majuscule and
							minuscule Insular scripts &#8212; although their aspects are very
							different &#8212; use several of the most common Half-Uncial
							letterforms, notably the 5-shaped <b>g</b>.
						</p>
						<p>
							As usual, be careful about telling <b>r</b> from tall <b>s</b>,
							and remember that in Insular scripts the shoulder of <b>r</b>
							curves down towards the baseline, while the shoulder of <b>s</b>
							never does. As a result, <b>r</b> is easy to confuse with <b>n</b>
							and <b>s</b> is easy to mistake for <b>r</b>.
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-11">
						<p>
							This is an <b>r</b>: <img
								src="${pageContext.request.contextPath}/static/img/school/insular-transcription/stadbibgen1p2_TRANS1.jpg"
								alt="the letter r from Schaffhausen Stadbib Gen 1 p2">
							and this is an <b>s</b>: <img
								src="${pageContext.request.contextPath}/static/img/school/insular-transcription/stadbibgen1p2_TRANS2.jpg"
								alt="the letter s from Schaffhausen Stadbib Gen 1 p2">
						</p>
						<p>&nbsp;</p>
						
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>