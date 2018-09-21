<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac Transcription" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Syriac Transcription Exercises- Introduction" />
	<tiles:putAttribute name="nextSection"
		value="syriac-estrangela-transcription" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					Syriac handwriting typically requires less deciphering than Latin,
					Greek, and Arabic scripts. The following exercises offer some
					practical exercises in rendering what&#8217;s on a manuscript page
					into a document easily readable by humans and computers. This
					allows you and others to focus on the text itself, rather than on
					the script, which may or may not be clearly legible. (A more
					complex and more versatile way of doing this is with TEI. See <a
						href="http://www.tei-c.org/Support/Learn/dsguide1.html"
						target="_blank">A TEI-Based Tag Set for Manuscript
						Transcription</a>.)
				</p>
				<p>In addition, having a complete and accurate transcription
					means you have a reliable record of the manuscript&#8217;s witness.
					Nowadays, most of us have easy access to digitized images either
					online or on our own hard drives, but there may still be cases
					where having a transcription will be the only record of a
					manuscript (just as later copies of an ancient manuscript are often
					the only witnesses to the lost exemplar). Finally, having
					transcribed a manuscript means that you have correctly read the
					letters that are written, or at least made the initial attempt to
					do so, and noted any possible problems in the text.</p>
				<p>
					In transcribing a manuscript, the fundamental practice is to copy
					the letters (and other marks, as much as possible) as they are in
					the manuscript, with line breaks (and, of course, column, page, and
					folio breaks) indicated. A transcription may also require the use
					of a few signs (brackets, braces, angular braces, parentheses,
					obeli) to indicate (and complete) abbreviations, obvious errors,
					missing letters (or words), etc. (For further information, see the
					"Basics" section of <span class="redtext italicstext">v</span>HMML's
					<i>Transcribing Latin Manuscripts</i>, as well as Martin L. West, <i>Textual
						Criticism and Editorial Technique. Applicable to Greek and Latin
						Texts</i>, &#91;Stuttgart, 1973&#93;, pp. 80-82, and much more
					concisely, the outline here: <a
						href="http://udallasclassics.org/maurer_files/APPARATUSABBREVIATIONS.pdf"
						target="_blank">Commonest Abbreviations, Signs, etc. Used in
						the Apparatus to a Classical Text [PDF])</a>.) 
				Marginalia may be indicated between &#92;&#92; and
					&#47;&#47;, insertion of letters or words on the line between &#47;
					and &#92;, interlinear insertions between &#92; and &#47;. These
					signs may, of course, disrupt the continuity of Syriac letters in a
					word, something that is not a problem in Latin, Greek, Hebrew, and
					other scripts that do not have connected letters. By the way, there
					is nothing inherently wrong with transcribing a Syriac manuscript
					using a consistent transliteration, rather than Syriac letters,
					although this is more difficult for the dots.</p>
				<p>Transcribing the consonants is straightforward enough, but we
					must consider a few issues in addition to recording the
					letter-forms themselves. First, Syriac scribes use abbreviations
					&#8212; suspensions, that is, with the beginning of the word
					written and a line over the last letter&#91;s&#93; to show that
					something is not written &#8212; although not nearly as often as in
					some other traditions. As mentioned above, they may be completed
					within parentheses.</p>
				<p>What about vowels and the various dots that appear in Syriac
					manuscripts? Many Syriac manuscripts have no vowels or few vowels,
					and it is not always certain if the vowels found in a manuscript
					were written by the scribe or a later reader (not that a later
					reader&#8217;s vowels are of no interest!). In large measure,
					whether or not to record vowels depends on the kind of text (and
					even the word) and on the kind of edition planned, if one is
					planned. Vowels in poetry and in grammatical and lexical works may
					be very meaningful, and in any kind of text more unfamiliar words,
					including some proper names, may have vowels that a transcriber
					should note.</p>
				<p>
					There are three broad functions of dots in Syriac:
					phonological (<i>rukk&#257;k&#257;</i> and <i>qu&#353;&#353;&#257;y&#257;</i>);
					grammatical (to mark <abbr title="3rd person feminine singular">3fs</abbr>
					suffix, participle, <i>sy&#257;m&#275;</i>, etc.); for punctuation
					(to mark stronger or weaker divisions between sentences and parts
					of sentences). Syriac grammarians discussed these dots, and some
					details will also be found in the larger grammars of modern
					scholars (e.g. Th. Arayathinal, <i>Aramaic Grammar</i>, vol. 1, pp.
					26-45&#59; G. Kiraz, <i>Turr&#257;&#7779; Mamll&#257;: A
						Grammar of the Syriac Language</i>, vol. 1, <i>Orthography</i>,
					chapters 4-6). J.B. Segal (<i>The Diacritical Point and the
						Accents in Syriac</i>) and, very recently, Kiraz (<i>The Syriac
						Dot</i>) have devoted monographs to these matters. In addition to
					these guides, some of which may present an ideal rather than the
					reality, interested readers must carefully study manuscripts
					themselves. All things being equal, transcribers should record
					these dots as they stand in the manuscript.
				</p>
				<hr />
				<p>
					Note: for the PDF reference above, if you do not
					already have PDF viewer software you may <a
						href="https://get.adobe.com/reader/"  target="_blank">download the free Adobe
						Acrobat Reader</a>.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>