<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Introduction" />
	<tiles:putAttribute name="sectionName"
		value="Section 3: Method of Approach" />
	<tiles:putAttribute name="previousSection" value="typessyriacdating" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					In what follows, the various letter shapes are presented
					descriptively with special attention to notable characteristics
					found in the examples chosen to illustrate the script. (Not every
					distinctive letter-form is necessarily highlighted for each
					manuscript!) These descriptions of particular kinds of writing are
					almost always presented in light of other ways of writing, that is,
					they are contrastive descriptions, even if the comparanda are not
					explicitly stated. The descriptions are from the point of view of
					the reader encountering Syriac manuscripts, not necessarily from
					the point of view of someone writing Syriac manuscripts. (For the
					latter case, see Alain A. Desreumaux, &#8220;Comment peut-on
					&eacute;crire en syriaque? ou des probl&egrave;mes du scribe devant
					sa page blanche,&#8221; in C. Batsch, and M.
					V&acirc;rtejanu-Joubert, eds., <i>Mani&egrave;res de penser
						dans l&#39;Antiquit&eacute; m&eacute;diterran&eacute;enne et
						orientale</i>. <i>M&eacute;langes offerts &agrave; Francis Schmidt
						par ses &eacute;l&egrave;ves, ses coll&egrave;gues et ses amis</i>,
					Supplements to the Journal for the Study of Judaism 134 &#91;Leiden
					&#47; Boston&#58; Brill, 2009&#93;, pp. 105-126.) Close familiarity
					with the examples and descriptions provided here, coupled with
					further attentive reading of other manuscripts, will bring one
					closer and closer to a comprehensive view. In addition to the
					descriptions of script-types, illustrated with examples from
					various manuscripts, transcription exercises are available to test
					your growing knowledge of Syriac paleography.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					The following letter names are used in the descriptions. In the
					descriptions, the typical East Syriac names for the letter-forms
					are used. They are not necessarily more accurate than the typical
					West Syriac names, it is simply that one had to be chosen. (In
					informal practice, mixtures of the Hebrew, Arabic, and Syriac names
					may be encountered, e.g. <i>&#x02bf;ayin</i> or <i>&#x02bf;ayn</i>
					instead of <i>&#x02bf;&#275;</i>.)
				</p>
				<ul>
					<li class="letterDescription"><i>&#257;lap</i></li>
					<li class="letterDescription"><i>b&#275;t</i></li>
					<li class="letterDescription"><i>g&#257;mal</i></li>
					<li class="letterDescription"><i>d&#257;lat</i></li>
					<li class="letterDescription"><i>h&#275;</i></li>
					<li class="letterDescription"><i>w&#257;w</i></li>
					<li class="letterDescription"><i>zayn</i></li>
					<li class="letterDescription"><i>&#7717;&#275;t</i></li>
					<li class="letterDescription"><i>&#7789;&#275;t</i></li>
					<li class="letterDescription"><i>yod</i></li>
					<li class="letterDescription"><i>k&#257;p</i></li>
					<li class="letterDescription"><i>l&#257;mad</i></li>
					<li class="letterDescription"><i>mim</i></li>
					<li class="letterDescription"><i>nun</i></li>
					<li class="letterDescription"><i>semkat</i></li>
					<li class="letterDescription"><i>&#x02bf;&#275;</i></li>
					<li class="letterDescription"><i>p&#275;</i></li>
					<li class="letterDescription"><i>&#7779;&#257;d&#275;</i></li>
					<li class="letterDescription"><i>qop</i></li>
					<li class="letterDescription"><i>r&#275;&#353;</i></li>
					<li class="letterDescription"><i>&#353;in</i></li>
					<li class="letterDescription"><i>t&#257;w</i></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					It is assumed that users are familiar with the basic ductus of
					Syriac letter shapes, which is easily obtainable from Syriac
					grammars such as Theodor N&ouml;ldeke, <a
						href="https://archive.org/details/CompendiousSyriacGrammar"
						target="_blank"><i>Compendious Syriac Grammar</i></a>, translated by
					J. Crichton (London&#58; Williams and Norgate, 1904), or T.
					Muraoka, <i>Classical Syriac&#58; A Basic Grammar with a
						Chrestomathy</i>, Porta Linguarum Orientalium, Neue Serie 19
					(Wiesbaden: Harrassowitz Verlag, 1997). Not every letter is always
					commented upon here. Other than this introduction, which should be
					considered necessary, users may in general study the lessons for
					any particular script-type independently of the other script-types.
					The descriptions sometimes refer to the Estrangela shape, Serto
					shape, or East Syriac shape&#59; these are merely terms of
					convenience and make no necessary claim about origin.
				</p>
				<p>As a final word, let me encourage users of this course not
					only to read, but to study carefully, as many manuscripts as
					possible. Those who closely trace with eyes or hand the lines that
					make up the mountain of Syriac manuscripts from many times and
					places that have survived, a growing number of which are
					immediately accessible online, will thus steadily earn an accurate
					grasp of what Syriac writing looks like. Users like you will yield
					their own riches to our understanding of Syriac script through the
					ages.</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h4 class="lessonSubheading">ACKNOWLEDGEMENTS</h4>
				<ul>
					<li>Joshua Falconer indicated to me some specific dated
						examples of twentieth-century East Syriac script.</li>
					<li>Mary Hoppe and Wayne Torborg promptly provided me from
						afar with requested images from HMML's collections.</li>
					<li>Ryan Korstange read through part of the Introduction, and
						Columba Stewart read through the whole course; both offered
						substantive suggestions for improvement.</li>
					<li>William Straub took the course from text files + images
						and made it a comprehensive whole on the <span
						class="redtext italicstext">v</span>HMML site.
					</li>
				</ul>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>