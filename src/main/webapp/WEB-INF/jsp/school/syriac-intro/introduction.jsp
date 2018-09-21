<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Introduction" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: A Tutorial in Syriac Paleography" />
	<tiles:putAttribute name="nextSection" value="typessyriacdating" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>With a growing number of high-quality digital images freely
					available online, even of a language and script so off the beaten
					path as Syriac, we now face an embarrassment of riches when it comes to
					paleographical guidance. Happily, the accessible material for
					paleographic inquiry has become rich and varied enough to form at
					the very least a preliminary understanding of how Syriac has been
					written.</p>
				<p>Hitherto, there have been at least four print resources for a
					paleographic introduction, with or without comment, to Syriac.
					Listed in chronological order of publication, they are:</p>
				<ul>
					<li>plates in <a
						href="https://archive.org/details/anecdotasyriaca01landuoft"
						target="_blank">J.P.N. Land&#8217;s <i>Anecdota Syriaca</i></a>,
						1862-1875, <a
						href="https://archive.org/details/anecdotasyriaca01landuoft"
						target="_blank">vols. 1-2</a>; <a
						href="https://archive.org/details/anecdotasyriaca0304land"
						target="_blank">vols. 3-4</a></li>
					<li>plates in <a
						href="https://archive.org/details/catalogueofsyria03brituoft"
						target="_blank">William Wright&#8217;s Catalog of Syriac
							Manuscripts in the British Library</a> (called British Museum at that
						time), 1870-1872, in vol. 3
					</li>
					<li>plates in <a
						href="https://archive.org/details/speciminacodicum00tissuoft"
						target="_blank">Eug&egrave;ne Tisserant&#8217;s <i>Specimena
								Codicum Orientalium</i></a>, 1914
					</li>
					<li><a
						href="https://archive.org/details/AnAlbumOfDatedSyriacManuscriptsByW.h.p.Hatch"
						target="_blank">W.H.P. Hatch&#8217;s Album of Dated Syriac
							Manuscripts</a>, 1946, (the 2nd ed. has a foreword by L. Van Rompay
						that both summarizes things since Hatch&#8217;s day and presents
						some suggestions for future work on Syriac paleography considered
						broadly)</li>
				</ul>
				<p>For a start, we should note that it is generally not possible
					to say definitively, based merely on traditional paleography and
					codicology, that a manuscript without a dated colophon or similar
					exact indication of time is from, say, the sixth century and not
					the eighth. And as valuable as the older studies have been,
					especially for the earlier periods of Syriac writing, they have
					left many questions open or unaddressed. Among their shortcomings
					are&#58; the lack of color images; an aversion to close-up
					inspection of individual letter-forms; and &#8212; a matter of
					great concern for those interested in a complete paleographic
					history &#8212; seemingly arbitrary cutoff dates for the
					&#8220;end&#8221; of certain scripts. This look at the history of
					Syriac paleography, surely not without its own limitations and
					faults of interpretation and presentation, seeks to address some of
					those shortcomings.</p>
				<p>Before we begin, some additional points merit highlighting.</p>
				<p>Syriac script has been used and is used for the writing of
					some Neo-Aramaic dialects: in other words, it is not only or purely
					an historical script.</p>
				<p>Syriac script has served not only for writing Syriac and
					Neo-Aramaic, but also for several non-Aramaic languages, including
					Armenian, Turkish, and Persian. Most non-Syriac manuscripts in
					Syriac script are in Arabic, a phenomenon called Garshuni. Given
					the very large number of Garshuni manuscripts, and the continuity
					of Syriac and Garshuni scribal patterns, there is a lesson in this
					course that briefly touches on Garshuni.</p>
				<p>The earliest documents in Syriac script include the famous
					Dura Europos parchment from 243, which, even at this early date,
					shows some elements akin to Serto. More recently discovered are P.
					Euphrates 19 and 20, dated 240 and 242, respectively. (Some Greek
					papyri from this area also have parts of the text in Syriac.) All
					three of these early documents are on parchment. Syriac on papyrus
					survives in a few fifth- to ninth-century documents, some from the
					Monastery of St. Catherine in the Sinai and from Dayr
					al-Sury&#257;n the Wadi al-Natr&#363;n, ancient Scetis, in Egypt.
					From the finds at the Manichaean site of Kellis in Egypt, Syriac
					stands alone on some papyri, and in other documents appears
					alongside Coptic and Greek. As with the Dura Europos parchment,
					some of these documents exhibit a cursive hand with similarities to
					Serto. Since the focus of this course is manuscripts as commonly
					envisioned, i.e. codices, and since these texts lie beyond the pale
					of mainline Syriac manuscript production, this course does not
					include them. They are, however, of great importance for a broader
					history of Syriac script.</p>
				<p>
					Those who are interested in the representational artwork of Syriac
					manuscripts still have a helpful guide in Jules Leroy&#8217;s <i>Les
						manuscrits syriaques &agrave; peinture conserv&eacute;s dans les
						biblioth&egrave;ques d&#39;Europe et d&#39;Orient. Contribution
						&agrave; l&#39;&eacute;tude et &agrave; l&#39;iconographie des
						&eacute;glises de langue syriaque</i> (Paris, 1964). Although the
					plates are not in color, they nonetheless suggest the kinds of
					artwork featured in Syriac manuscripts. Happily, some of the
					manuscripts featured by Leroy have since been photographed in color
					by HMML. More recent studies include Reiner S&ouml;rries, <i>Die
						syrische Bibel von Paris, Biblioth&egrave;que Nationale, syr
						341&#58; Eine fr&uuml;hchristliche Bilderhandschrift aus dem 6.
						Jahrhundert</i> (Wiesbaden, 1991), and Lucy-Anne Hunt, &#8220;Leaves
					from an Illustrated Syriac Lectionary of the Seventh/Thirteenth
					Century,&#8221; in D. Thomas, ed., <i>Syrian Christians under
						Islam&#58; The First Thousand Years</i> (Leiden, 2001), pp. 185-202.
				</p>
				<p>Syriac inscriptions, which differ from manuscripts both in
					their production (engraving) and their support (stone, etc.),
					naturally have much to offer in a consideration of how Syriac
					script has been used, but are not included in this basic course.
					Texts appearing on wall paintings or frescoes more closely approach
					the writing that we see in manuscripts, but because they are not on
					pages brought together in a codex, they, too, are excluded. A
					broader examination of Syriac script, rather than only of Syriac
					manuscripts &#8212; a desideratum that when fulfilled will be of
					value to many students of Syriac cultures &#8212; would rightly
					embrace all of these cognate fields.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>