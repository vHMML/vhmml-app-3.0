<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Garshuni" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Introduction to Garshuni: Arabic Language in Syriac Script" />
	<tiles:putAttribute name="nextSection" value="serto" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>This lesson is an excursus, and users who are strictly
					concerned with Syriac may skip it. Script and language are not linked absolutely. Garshuni presents one such disjunction. The manuscripts here in view are
					Arabic-language texts written in Syriac script &#40;both Serto and
					East Syriac&#41;. Syriac script has been used &#8212; in
					manuscripts, less often in print &#8212; to record a number of
					languages other than Syriac &#40;Persian, Turkish, Armenian,
					Georgian, etc.&#41;, but the best attested in manuscripts is
					Arabic. Without further qualification, the term Garshuni usually
					means Arabic language in Syriac script; with qualifiers &#40;e.g.,
					Armenian Garshuni&#41; it is sometimes used for any language
					written with Syriac script. (Cf., Arabic written with Hebrew
					script, also well attested and known as Judeo-Arabic.) While both
					Syriac and Arabic belong to the Semitic family of languages and
					thus share some phonological similarities, there are also
					differences. In addition, there are well-established scribal
					traditions on both sides, Syriac and Arabic. On the Arabic side, a
					reading tradition influenced more or less by the reader's own
					Arabic dialect may also come into play. That is to say, there is a
					reading tradition that does not necessarily have Classical Arabic
					as its model.</p>

				<p>
					Syriac script, with 22 letters, has a smaller inventory of letters
					than Arabic script, which has 28 letters, and while scribes often
					use(d) diacritical marks to fill out this deficiency, the
					manuscripts provide ample evidence that the practice was hardly
					universal. Ideally there would be exact correspondence between this
					Syriac letter (or letter plus diacritic) and that Arabic letter,
					and such an ideal appears in published charts to describe Garshuni.
					The manuscripts, however, are not so tidy. (For further details,
					with many examples, see Adam Carter McCollum, &#8220;Garshuni as It
					Is: Some Observations from Reading East and West Syriac
					Manuscripts,&#8221; <i>Hugoye</i> 17, no. 2 (2014): 215-235. Available at <a
						href="http://tinyurl.com/pdhf9rn" target="_blank">Academia.edu</a>.)
				</p>

				<p>This part of the course simply offers a showcase of some
					Serto and East Syriac Garshuni manuscripts. The letter-forms will
					be easily recognized from other parts of the course. Readers should
					especially take note of the variety of ways that underlying
					Arabic graphemes may appear. There really is not a standard
					Garshuni.</p>
				<hr />
				<p>
					Note: for the Academia.edu reference above, if you do not
					already have PDF viewer software you may <a
						href="https://get.adobe.com/reader/" target="_blank">download the free Adobe
						Acrobat Reader</a>.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>