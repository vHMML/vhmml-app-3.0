<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Caroline Minuscule: Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: More Abbreviations" />
	<tiles:putAttribute name="nextSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					In previous lessons, we have become familiar with the common mark
					of abbreviation used to indicate the omission of final <b>-m</b>.
					In this unit, we see a wider range of uses of the common mark.
				</p>
				<ul>
					<li>It can be used to indicate omission of <b>-m</b>
						following a vowel in the middle or a word, not just at the end, so
						look out for it in the middle of words.
					</li>
					<li>It can indicate that a very common word has been shortened
						by <b>suspension</b> (leaving off the end of a word) or <b>contraction</b>
						(leaving letters out of the middle of a word) in ways not
						otherwise specified. For example, in this unit's lessons, we have
						<b>e</b> with the common mark, for <i>est</i>; <b>dix</b> with the
						common mark, for <i>dixit</i>; and <b>oma</b> with the common
						mark, for <i>omnia</i>. The correct expansion of these forms is
						usually easy to deduce from context and syntax, but if in doubt,
						consult Adriano Cappelli, <i>Lexicon Abbreviaturarum</i>.
					</li>
				</ul>
				<p>
					This unit also introduces the ubiquitous form of medieval
					abbreviation whereby very common Latin function words starting with
					<b>p-</b> and <b>q-</b> (prepositions, adverbs, conjunctions, and
					pronouns, mostly) are abbreviated by a stroke placed above or below
					the letter <b>p</b> or <b>q</b>. The placement and shape of the
					stroke tells you which <b>p</b> or <b>q</b> word you are looking
					at. In the lessons on Gothic scripts, we will have more practice
					with these signs. For the moment, you can become familiar with the most
					common of these, the sign for <i>per</i>, which is a <b>p</b> with
					a horizontal stroke through the descender. (The <i>per</i>
					abbreviation can be used for the syllable <i>per</i> as part of a
					word, not only for the preposition <i>per</i> as a word by itself.)
				</p>
				<p>
					The transcription excercises in this unit will give you plenty of
					practice with <i>nomina sacra</i>. (If you need to review them,
					visit <a href="${pageContext.request.contextPath}/school/lesson/christian-late-antiquity-transcription/abbr-nomina-sacra"><i>Christian Late Antiquity Transcription</i>, section 3</a>.)
				</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>