<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/school.css?version=${applicationVersion}" />

<div class="row">
	<div class="col-lg-3">	
		<div class="block-image-wrapper">
			<div>
				<img src="${pageContext.request.contextPath}/static/img/StiftKlosterneuburgCodexClustroneoburgensis1098.png" class="block-image" />
			</div>
			<div class="info-icon-wrapper">
				<span class="info-icon">
					<i class="glyphicon glyphicon-info-sign pointer" aria-hidden="true" data-toggle="tooltip" title="Image from Stift Klosterneuburg, Codex Claustroneoburgensis, MS 1098. All rights reserved. Image provided by HMML." data-placement="right" data-trigger="hover"></i>
				</span>
			</div>			
		</div>			
	</div>
	<div class="col-lg-9">

		<p>School teaches about scripts and manuscripts, introducing
			learners to the sciences of paleography and codicology.</p>
		<p>Under the Scripts and Manuscripts heading below, choose a manuscript culture and
			follow the development of scripts through the centuries. Lessons
			include simple exercises to help you grasp important concepts.
			Lessons on Latin Scripts do not necessarily require a knowledge
			of Latin.</p>
		<p>Transcribing Manuscripts offers a chance to practice reading
			the scripts covered in the Scripts and Manuscripts lessons. Each
			transcription exercise includes an answer key. The lessons in
			Transcribing Latin or Syriac Manuscripts assume a knowledge of Latin or Syriac respectively.</p>
		<%--
			<span class="redtext">v</span>HMML School offers a new integrated
			learning platform to study historical scripts, paleography and
			codicology through an integrated use of an online textbook, study
			exercises, and transcription exercises.
		</p>

		<p>To begin your study, simply choose a lesson on historical
			scripts below to learn about a script, its development, and place in
			the history of the book. Exercises within the lessons will help test
			your knowledge of the script.</p>

		<p>You can refine and hone your paleographic skills with a script
			by selecting a one of the transcription exercises below. A text
			editor will allow you to transcribe the page and compare it to a
			completed scholar's transcription once you submit your work. Some
			knowledge of the original language may be needed to complete the
			transcription.</p>
		--%>
	</div>

</div>

<div class="row">
	<div class="col-lg-12">
		<!-- Paleography: Historical Scripts -->
		<h3 class="lessonTitleIntro">
			<span class="school-underline">Scripts and Manuscripts</span>
		</h3>

		<!--Collapsing curtain accordion from http://api.jqueryui.com/accordion/-->
		<div class="accordion">
			<h4 class="lessonHeading">Latin Scripts</h4>
			<div class="lessons">
				<a
					href="${pageContext.request.contextPath}/school/lesson/basics-paleography/overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/basicinprincipio.jpg"
					width="121" height="90"
					alt="Portion of manuscript showing  In principio, the beginning of the Gospel of John">&nbsp;Basics</a>
				<div class="lessonDescription">Basic terminology for the
					description of scripts and letters, and the physical features of
					the pages that carry them. Introduction to papyrus, parchment, and
					the codex.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/classical-antiquity/overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/squarecapsALIA.png"
					width="121" height="90"
					alt="Portion of manuscript showing  characters A L I E ">&nbsp;Classical
					Antiquity</a><br />
				<div class="lessonDescription">The majuscule and minuscule
					scripts used in the Roman world: Square Capitals, Rustic Capitals,
					Older Roman Cursive, and Later Roman Cursive.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/christian-late-antiquity/intro"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/uncialquia.png"
					width="121" alt="Portion of manuscript showing  characters q-u-i-a">&nbsp;Christian
					Late Antiquity</a>
				<div class="lessonDescription">Uncial and Half-Uncial, the
					dominant scripts of Christian books in late antiquity. The
					transition from the roll to the codex. Introduction to the analysis
					of page layout.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/insular-paleography/overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/insularergo.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters e-r-g-o">&nbsp;Insular
					Manuscripts</a>
				<div class="lessonDescription">Uncial used in early-medieval
					England, Insular Half-Uncial used in Ireland and early Anglo-Saxon
					England, and the minuscule scripts of the British Isles. Insular
					developments in layout and word separation.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/carolingian-paleography/historical-orientation"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/carolinesuper.png"
					width="121" height="90"
					alt="Portion of manuscript showing Carolingian letters r-u-p-e-r">&nbsp;Carolingian
					Manuscripts</a>
				<div class="lessonDescription">Caroline Minuscule, the
					reformed script of the Carolingian world from the late 8th through
					the 11th centuries. Hierarchy of scripts and other features of
					Carolingian page design.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/gothic-textualis-paleography/historical-overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/textualisquid.png"
					width="121" height="90"
					alt="Portion of manuscript in Gothic script showing characters q-u-i-d">&nbsp;Gothic
					Textualis</a>
				<div class="lessonDescription">The transition from Caroline
					Minuscule to Gothic Textualis script in the 12th century. Features
					of Textualis and of Gothic page design in the 12th to 15th
					centuries.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/visigothic-paleography/visigothic-intro"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/beneventansese.png"
					width="121" height="89"
					alt="Portion of manuscripts showing  characters  in Visigothic and Beneventan Script">&nbsp;Visigothic
					and Beneventan</a>
				<div class="lessonDescription">The scripts of Spain and
					southern Italy in the central and high Middle Ages.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/gothic-cursiva-paleography/cursiva-overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/gothiccursivesola.png"
					width="121" height="90"
					alt="Portion of manuscript showing four characters in Gothic cursive script">&nbsp;Gothic
					Cursiva</a>
				<div class="lessonDescription">Cursive scripts of the later
					Middle Ages (13th-15th centuries).</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/humanist-paleography/historical-overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/humanistquod.png"
					width="121" height="90"
					alt="Portion of manuscript in Humanist Minuscule script showing characters q-u-o-d">&nbsp;Humanist</a>
				<div class="lessonDescription">The reformed scripts of Italian
					humanists of the 15th century, Humanist Minuscule and Humanist
					Cursive. Features of Humanist page layout compared to Carolingian
					and Gothic page design.
					</div>
			</div>
			<h4 class="lessonHeading">Syriac Scripts</h4>
			<div class="lessons">
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-intro/introduction"
					class="lessonLink"> <img
					src="${pageContext.request.contextPath}/static/img/school/syriacintro.png"
					width="121" alt="Portion of manuscript showing Syriac characters">&nbsp;
					Syriac Paleography: Introduction
				</a>
				<div class="lessonDescription"></div>

				<hr />
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-estrangela/estrangela"
					class="lessonLink"> <img
					src="${pageContext.request.contextPath}/static/img/school/syriacearliestestrangela.png"
					width="121" alt="Portion of manuscript showing Syriac characters in earliest Estrangela style">&nbsp;
					Syriac Earliest Estrangela
				</a>
				<div class="lessonDescription"></div>

				<hr />
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-usual-estrangela/smmj-180"
					class="lessonLink"> <img
					src="${pageContext.request.contextPath}/static/img/school/syriacusual.png"
					width="121" alt="Portion of manuscript showing Syriac characters in usual Estrangela style">&nbsp;
					Usual Estrangela
				</a>
				<div class="lessonDescription"></div>

				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-later-estrangela/smmj-55"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriaclater.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters in later Estrangela style script">&nbsp;Later
					Estrangela </a>
				<div class="lessonDescription"></div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-serto/serto-characteristics"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriacserto.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters in Serto Syriac style">&nbsp;Serto </a>
				<div class="lessonDescription"></div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-east/overview"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/eastsyriac.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters in East Syriac style script">&nbsp;East
					Syriac </a>
				<div class="lessonDescription"></div>
				<hr />
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-melkite/melkite-examples"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriacmelkite.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters from Melkite manuscript">&nbsp;Melkite
				</a>

				<div class="lessonDescription"></div>
				<hr />
<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-20-21c/20-21stmanuscripts"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriac20thserto.png"
					width="121" height="90"
					alt="Portion of manuscript showing charactersfrom 20th Century Serto Syriac manuscript">&nbsp;Twentieth and Twenty-First Century 
				</a>

				<div class="lessonDescription"></div>
				<hr />
<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-garshuni/intro"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriacgarshuni.png"
					width="121" <%--height="90" --%>
					alt="Portion of manuscript showing Syriac garshuni characters">&nbsp;Garshuni
				</a>

				<div class="lessonDescription"></div>
				<hr />
				


			</div>
			<h4 class="lessonHeading">Arabic Scripts (coming soon)</h4>
			<div>
				<p><img src="${pageContext.request.contextPath}/static/img/school/arabic-placeholder.jpg"
					width="121" height="90"
					alt="Portion of manuscript showing Arabic script">&nbsp;Lessons for Arabic scripts are currently being developed.</p>
			</div>

			<h4 class="lessonHeading">Armenian Scripts (coming soon)</h4>
			<div>
				<p><img src="${pageContext.request.contextPath}/static/img/school/armenian-placeholder4.jpg"
					width="121" height="90"
					alt="Portion of manuscript showing Armenian script">&nbsp;Lessons for Armenian scripts are currently being developed.</p>
			</div>

			<h4 class="lessonHeading">Ge'ez Scripts
				(coming soon)</h4>

			<div>
				<p><img src="${pageContext.request.contextPath}/static/img/school/geez-placeholder1.jpg"
					width="121" height="90"
					alt="Portion of manuscript showing Ge'ez script">&nbsp;Lessons for Ge'ez scripts are currently being developed.</p>
			</div>
			<%--<h4 class="lessonHeading">Greek Scripts (coming soon)</h4>

			<div>
				<p>We hope to add lessons for Greek scripts some time in 2017.</p>
			</div>--%>
			 <h4 class="lessonHeading">Persian Scripts (coming later)</h4>

			<div>
				<p>Lessons for Persian scripts are being developed.</p>
			</div>

		</div>
		<!-- end of Accordion -->

		<h3 class="lessonTitleIntro">
			<%-- Transcription Lessons --%>
			<span class="school-underline">Transcribing Manuscripts</span>
		</h3>

		<div class="accordion">
			<h4 class="lessonHeading">Transcribing Latin Manuscripts</h4>
			<div class="lessons">
				<a
					href="${pageContext.request.contextPath}/school/lesson/basics-transcription/purposes"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/basicinprincipio.jpg"
					width="121" height="90"
					alt="Portion of manuscript showing  In principio, the beginning of the Gospel of John">&nbsp;Basics</a>
				<div class="lessonDescription">How and why to transcribe text
					from manuscripts. Overview of transcription conventions used in
					this course.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/classical-antiquity-transcription/transcription-lesson"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/squarecapsALIA.png"
					width="121" height="90"
					alt="Portion of manuscript showing  characters A L I E ">&nbsp;Classical
					Antiquity</a>
				<div class="lessonDescription">Practice transcribing a
					manuscript in Square Capitals that has no separation between words.
					</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/christian-late-antiquity-transcription/intro"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/uncialquia.png"
					width="121" alt="Portion of manuscript showing characters q-u-i-a">&nbsp;Christian
					Late Antiquity</a>
				<div class="lessonDescription">
					Abbreviation by suspension of final syllables and <em>nomina
						sacra</em> abbreviations. Practice transcribing manuscripts in Uncial
					and Half-Uncial.
				</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/insular-transcription/insular-review"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/insularergo.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters e-r-g-o">&nbsp;Insular
					Scripts</a>
				<div class="lessonDescription">Insular abbreviations. Practice
					transcribing Insular Half-Uncial and Irish Minuscule.</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/caroline-min-transcription/more-abbreviations"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/carolinesuper.png"
					width="121" height="90"
					alt="Portion of manuscript showing Carolingian letters r-u-p-e-r">&nbsp;Caroline
					Minuscule</a>
				<div class="lessonDescription">
					More uses of the common mark of abbreviation. <em>P</em>- and <em>q</em>-abbreviations.
					Practice transcribing Caroline Minuscule.
				</div>
				<hr />

				<a
					href="${pageContext.request.contextPath}/school/lesson/gothic-transcription/gothic-trans-intro"><img
					src="${pageContext.request.contextPath}/static/img/school/textualisquid.png"
					width="121" height="90"
					alt="Portion of manuscript in Gothic script showing characters q-u-i-d">&nbsp;Gothic
					Textualis</a>
				<div class="lessonDescription">
					More forms of abbreviation by suspension; more <em>p</em>- and <em>q</em>-abbreviations.
					Coping with minim-confusion. Practice transcribing Textualis.
				</div>
				<hr />
				<%--
				<a href="#.html" class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/beneventansese.png"
					width="121" height="89"
					alt="Portion of manuscripts showing  characters  in Visigothic and Beneventan Script">&nbsp;Visigothic
					and Beneventan </a>
				<div class="lessonDescription">Ligatures and abbreviations
					particular to Visigothic and Beneventan. Practice transcribing
					Visigothic and Beneventan.</div>
				<hr />

				<a href="#.html" class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/gothiccursivesola.png"
					width="121" height="90"
					alt="Portion of manuscript showing four characters in Gothic cursive script">&nbsp;Gothic
					Cursives</a>
				<div class="lessonDescription">Continued practice with Gothic
					abbreviations. Practice transcribing two varieties of Gothic
					Cursive.</div>
				<hr />
 --%>
				<a
					href="${pageContext.request.contextPath}/school/lesson/humanist-transcription/humanist-transcription"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/humanistquod.png"
					width="121" height="90"
					alt="Portion of manuscript in Humanist Minuscule script showing characters q-u-o-d">&nbsp;Humanist
					Minuscule</a>
				<div class="lessonDescription">Practice transcribing Humanist
					Minuscule.</div>
			</div>
			<h4 class="lessonHeading">Transcribing Syriac Manuscripts</h4>
			<div class="lessons">
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-transcription/syriac-transcription-intro"
					class="lessonLink"> <img
					src="${pageContext.request.contextPath}/static/img/school/syriacintro.png"
					width="121" alt="Portion of manuscript showing Syriac characters">&nbsp;
					Syriac Transcription: Introduction
				</a>
				<div class="lessonDescription"></div>

				<hr />
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-transcription/syriac-estrangela-transcription"
					class="lessonLink"> <img
					src="${pageContext.request.contextPath}/static/img/school/syriacearliestestrangela.png"
					width="121" alt="Portion of manuscript showing Syriac characters">&nbsp;
					Estrangela Transcription
				</a>
				<div class="lessonDescription"></div>
				<hr />
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-transcription/syriac-east-transcription"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/eastsyriac.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters">&nbsp;East
					Syriac Transcription </a>
				<div class="lessonDescription"></div>


				<hr />
				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-transcription/syriac-serto-transcription"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriacserto.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters">&nbsp; Serto
					Transcription </a>
				<div class="lessonDescription"></div>
				<hr />


				<a
					href="${pageContext.request.contextPath}/school/lesson/syriac-transcription/syriac-melkite-transcription"
					class="lessonLink"><img
					src="${pageContext.request.contextPath}/static/img/school/syriacmelkite.png"
					width="121" height="90"
					alt="Portion of manuscript showing characters">&nbsp;Melkite
					Transcription </a>
				</div>
				<%-- <h4 class="lessonHeading">Transcribing Arabic Manuscripts (coming later)</h4>
			<div>
				<p>Lessons for Arabic transcription will be developed and made public later in 2016.</p>
			</div>
			--%>
			</div>
		</div>

		<div id="backCover1"
			style="width: 5000px; height: 3000px; position: fixed; background: black; top: 0; left: 0; filter: alpha(Opacity = 50); opacity: 0.5; z-index: 9; display: none">
			&nbsp;</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('.accordion').accordion({
				heightStyle : 'content',
				active : false,
				collapsible : true
			});
		});
	</script>