<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Gothic Textualis: Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Working with Gothic Script" />
	<tiles:putAttribute name="nextSection" value="gothic-transcription-1" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p> This transcription lesson gives you three transcription
					exercises, for plenty of practice with the challenges of Textualis.
					<%--This transcription lesson gives you two transcription
					exercises, for some practice with the challenges of Textualis.--%></p>
				<p>As you learned in the paleography lesson on Textualis, the
					key characteristics of the script include lateral compression and a
					very regular rhythm of parallel minims whose feet are all finished
					the same way. These are the features that can make the script
					tricky to transcribe.</p>
				<p>
					In earlier medieval scripts, you encountered forms of individual
					letters that were easy to mistake for other letters &#8212; an <b>a</b>
					that looks like a <b>u</b> or like <b>cc</b>, for example, or an <b>s</b>
					that looks like an <b>f</b> or an <b>r</b>. In Textualis, the
					bigger problem is that the letters are so close to each other, and
					so many of them are made up of minims. It is often necessary to
					count minims to figure out how to disentangle <b>i m n</b> and <b>u</b>
					from one another &#8212; and as you know, those letters are used a
					lot, and used in combination a lot, in Latin.
				</p>
				<p>The first transcription exercise in this lesson is actually
					one of the Protogothic manuscripts you saw in this unit's
					paleography lesson. It will give you a chance to practice dealing
					with lateral compression and minim-confusion in a script that
					consists mainly of familiar Caroline letterforms.</p>
				<p>
					The second manuscript you'll transcribe is a very formal Textualis
					from the 14th century, which will give you practice with extremely
					regular minims with lozenge-shaped feet, as well as other Gothic
					features like biting, the 2-shaped <b>r</b>, and the <b>7</b>-shaped
					Tironian <i>et</i> in its later Gothic form.
				</p>
				<p> The third manuscript contains all of those forms, but in a
					script with a markedly less careful ductus and letters that almost
					all touch each other. If you've completed the first two exercises,
					your eye should be ready to tackle this one.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>