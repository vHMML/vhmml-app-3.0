<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Insular Scripts: Transcription" />
	<tiles:putAttribute name="sectionName" value="Section 2: Abbreviations" />
	<tiles:putAttribute name="previousSection" value="insular-review" />
	<tiles:putAttribute name="nextSection" value="exercise-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<p>Insular manuscripts use a number of arbitrary signs of
					abbreviation derived from Tironian notes, the ancient shorthand
					system traditionally attributed to Cicero's amanuensis Tiro. These
					are symbols that represent whole words, without bearing any
					relationship in shape to the letters of the word in question. The
					most important of these are:</p>
				<p>
					<b><span class="subscripted">7</span></b> for <b>et</b> (looks like the number 7, sitting low on the line
					so its tail hangs down below the baseline)
				</p>
				<p>
					<b>&#247;</b> for <b>est</b> (looks like a division sign)
				</p>
				<p>
					When you expand either of these abbreviations, you should give the
					whole word in parentheses, because you are supplying every letter
					of the word the symbol represents. For example, if you see <b><span class="subscripted">7</span></b>
					you should transcribe it (<b>et</b>).
				</p>
				<p>
					Note, though, that the other usual medieval representation of <b>et</b>,
					the ampersand, is not really an abbreviation; it is just an <b>e</b>
					and a <b>t</b> written in ligature &#8212; written so that the two
					letters share a stroke and their ductus is changed when the two
					letters combine. So if you see <b>&</b>, you should just transcribe
					it <b>et</b> with no parentheses.
				</p>
				<p>
					There are several other distinctively Insular abbreviations that do
					not appear in the transcription exercises in this lesson. These
					include an <b>h</b> with a little tag on its shoulder for <b>autem</b>;
					a backwards <b>c</b> for <b>con</b>; a backwards Uncial <b>e</b>
					for <b>eius</b>; and a symbol that looks like a small capital <b>H</b>
					for <b>enim</b>. Later scribes unfamiliar with Insular
					abbreviations often misinterpreted them. Textual critics have
					sometimes been able to demonstrate that a later scribe was working
					from an Insular exemplar because a mistaken transcription of an
					Insular abbreviation has worked its way into a text.
				</p>
				<p>Ready to try transcribing some Insular script? Click ahead to
					try transcribing Insular Half-Uncial.</p>
				<hr />
				
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>