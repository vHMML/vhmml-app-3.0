<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Introduction" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Types of Syriac Scripts and Dating" />
	<tiles:putAttribute name="previousSection" value="introduction" />
	<tiles:putAttribute name="nextSection" value="method" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">Types of Syriac Script</h4>
				<p>
					In these lessons we will consider main script-types arranged
					according to rough chronological periods. These are&#58;
					Estrangela, Serto, East Syriac, and Melkite. (There are others,
					too, such as the Syro-Malabar script, for which see F.
					Briquel-Chatonnet and A. Desreumaux, &#8220;A Study and
					Characterization of the Syro-Malabar Script,&#8221; <i>Journal
						of Semitic Studies</i> 55 [2010]&#58; 407-421.) Because scholars have
					paid little paleographic and codicological attention to recent
					manuscripts, one lesson will touch on the writing of twentieth and
					twenty-first century manuscripts. Finally, even though students
					strictly interested in Syriac may skip it, a lesson on Garshuni
					(Arabic language in Syriac script) will conclude the course. As
					Syriac language is not in view for the Syriac parts of the course,
					neither is Arabic language in view in the Garshuni lesson. Rather,
					the lesson introduces some basic points about the adaptation of
					Syriac script for the writing of Arabic texts, such as diacritics
					or lack thereof.
				</p>
				<p>
					While some features of a particular script-type or period may be
					unique, others are more fluid. This is particularly the case with
					mixed Estrangela-Serto manuscripts and with late Estrangela and
					early East Syriac. (Studies on some of these relationships include
					F. Briquel-Chatonnet&#8217;s &#8220;De l&#8217;&eacute;criture
					&eacute;dessenienne &agrave; l&#8217;estrangel&acirc; et au
					sert&ocirc;,&#8221; <i>Semitica</i> 50 &#91;2000&#93;: 81-90 and
					&#8220;Some Reflections about the Origin of the Serto
					Script,&#8221; <i>The Harp</i>, 18 &#91;2005&#93;: 173-177.) In
					addition, while Syriac type as it appears in texts and grammars
					will give students a general sense of ductus, angles, roundness,
					etc., there is naturally a notable amount of variety in
					script-types. Scribal hands have less consistency than printed
					type, and the boundaries between script-types and time periods may
					be less pronounced in reality than they are in a convenient chart.
					This arrangement by script-types is more for convenience in
					pedagogical presentation than for any assumption that it is a
					comprehensively accurate paradigm of Syriac writing in manuscripts.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<h4 class="lessonSubheading">Dating</h4>
				<p>
					Because chronology will be a leitmotif within the arrangement of
					the presentation of script-types, a word about dates is required.
					Some manuscripts are reliably datable, others less so. When scribes
					provide a date in a colophon, we have the most certain basis. Even
					without a colophon, later readers and owners sometimes note the
					date of their reading or ownership, and we thus have a <i>terminus
						ante quem</i> for the production of the manuscript. Syriac manuscripts
					are most commonly dated <i>Anno Graecorum</i>, <i>Anno Domini</i>,
					<i>Anno Martyrum</i>, or <i>Anno Hegirae</i>&#59; it is not
					uncommon for scribes to give the year according to more than one
					era. (For a study, see L. Bernhard, <i>Die Chronologie der
						syrischen Handschriften</i>, Verzeichnis der orientalischen
					Handschriften in Deutschland, Supplementband 14 &#91;Wiesbaden&#58;
					F. Steiner, 1971&#93;.)
				</p>
				<p>Whatever the system of dating, without any such explicit
					dates, we have to rely on analysis of the script and on
					codicological indicators such as parchment vs. paper, etc. This
					kind of inference based on script, support, and other non-explicit
					data is naturally less reliable than a solid date from a scribe,
					and scholars accordingly put less confidence in it. It is safest to
					take all such estimations with caution, and never to grant them the
					kind of trust we would give to an explicit date. Given that Syriac
					scribes typically show a conservative approach to writing practice,
					possible date ranges of a couple of centuries or even a little
					more, are not unusual.</p>
				<p>
					A caveat is in order, however, about attempting a chronological
					presentation. Some parts of this caveat have already been alluded
					to. As L. Van Rompay (foreword to Hatch, <i>Album</i>, 2d ed., v)
					has remarked,
				</p>
				<blockquote>
					<i>...we run the risk of using these witnesses as solid
						stepping-stones in our study and reconstructing the history of
						Syriac handwriting too much in terms of a linear development. The
						more evidence we take into account, the more it becomes clear how
						diversified and complex Syriac handwriting was throughout the
						ages, allowing the coexistence of different styles and always
						leaving room for local and personal idiosyncrasies.</i>
				</blockquote>
				<p>We must, therefore, resist the temptation to make the history
					of Syriac paleography more tidy than it really is, despite certain
					core characteristics of given script-types in certain periods or
					places.</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>