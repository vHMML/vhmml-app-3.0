<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 6:   Writing Supports and the Form of the Book: Parchment and the Codex" />
	<tiles:putAttribute name="previousSection" value="papyrus" />
	<tiles:putAttribute name="nextSection" value="page-layout" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-11">
				<p>
					<b>Parchment:</b> From late antiquity through the Middle Ages, the
					normal writing support was <b>parchment</b>, which is animal skin.
					(We will discuss the transition from papyrus to parchment in Unit
					3.) <b>Parchment</b> was normally made from the skin of sheep, or
					calves for larger books, and, in southern Europe, sometimes goats.
				</p>
				<p>
					The term <b>vellum</b> derives from the word for calf and is
					generally but imprecisely used to mean extra-fine or high-grade
					parchment. In this course, we stick to the word <b>parchment.</b>
				</p>
				<p>
					<b>Making parchment:</b> To make parchment, the animal skin was
					soaked in lime and water and then scraped to remove the hair from
					the outside surface and the flesh from the inside. In finished
					parchment, it is very often still possible to tell the side that
					used to have the hair (the <b>hair side</b>) from the side that
					used to have the flesh (the <b>flesh side</b>), because the latter
					is smoother and the former slightly shinier, sometimes with visible
					hair follicles.
				</p>
				<p>
					<b>Folio and bifolium:</b> A sheet of prepared parchment would be
					folded in half to make two leaves, or four pages. A leaf of a
					manuscript is called a <b>folio</b> and a single sheet of parchment
					that forms two folios is called a <b>bifolium</b> (plural: <b>bifolia</b>).
					Two folios that are physically joined together at the fold &#8212;
					part of the same sheet of parchment &#8212; are said to be <b>conjoint</b>.
				</p>
				<p>
					<b>Quires or gatherings:</b> A number of bifolia &#8212; normally
					four or five &#8212; would be nested together and sewn together
					through their central folds to make booklets. A parchment booklet
					is called a <b>gathering</b> or <b>quire</b>. (The terms are
					interchangeable. We will usually use the term <b>quire</b>.)
				</p>
				<p>
					<b>Hair side to hair side, flesh side to flesh side:</b> The
					general, though not universal, practice in the Middle Ages was to
					assemble quires with the hair sides of the parchment sheets facing
					each other, and the flesh sides facing each other. That way, any
					opening of the finished codex &#8212; two facing pages in the book
					&#8212; would have matching textures.
				</p>
				<p>
					<b>Codex: Codex</b> refers to the form of the book that we still
					use today (when we still use physical books). A <b>codex</b> is a book
					made up of a number of quires sewn together at their folds &#8212;
					at what becomes the spine of the book. The quires are normally sewn
					onto bands which are then threaded through boards that form the
					covers of the book, and the boards and bands are in turn covered in
					leather. (We will discuss the transition from roll to codex in
					late antiquity in Unit 3).
				</p>
				<hr />
				<p>
					<b>Watch two videos from the Getty Museum about how medieval
						manuscripts are made:</b> This short, animated video illustrates <b>folios,
						bifolia,</b> and <b>gatherings,</b> and how gatherings (or quires) go
					together to make a <b>codex</b>.
				<p>
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/HKBJkf2xbqI?rel=0"
						allowfullscreen></iframe>
				</p>

				<hr />
				<p>This video shows all the steps from preparing animal skins
					through binding the finished codex, and includes information about
					pens, erasure, and illumination as well.</p>
				<iframe width="420" height="315"
					src="https://www.youtube.com/embed/1aDHJu9J10o?rel=0"
					allowfullscreen></iframe>
				<hr />
				<p>
					<b>Recto and verso:</b> As mentioned in the first Getty video, we
					refer to the front side of a folio &#8212; the right-hand page when
					a book is open &#8212; as the <b>recto</b>, meaning <b>right
						side</b>. The flip side &#8212; the left page when a book is open
					&#8212; is called the <b>verso</b>, meaning <b>reverse</b>.
				</p>
				<p>
					Modern scholars generally refer to the pages of manuscripts by
					folio number and recto or verso, abbreviated <b>r</b> or <b>v</b>,
					so you will see pages referred to as <b>fol</b>. (or <b>f</b>.) <b>1r,
						fol. 1v,</b> etc., instead of <b>page 1, page 2</b>, etc. Despite this
					general practice, a few libraries that hold large collections of
					medieval manuscripts conventionally use page numbers instead of
					folio numbers to refer to the pages in their manuscripts &#8212;
					notably the Abbey Library of St. Gall, Switzerland. You will see
					many St. Gall manuscripts in this course. You should get used to
					seeing both page numbers and folio numbers.
				</p>
				<p>
					The numbering of folios, which is called <b>foliation</b>, does not
					generally appear until the very end of the Middle Ages, and
					pagination &#8212; numbering pages &#8212; is even later. So any
					numbering scheme you see in modern catalogs is later than the
					original creation of the manuscripts we are studying. If you see
					folio or page numbers written on a medieval manuscript page, they
					were almost certainly added by a later owner or librarian.
				</p>



				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
