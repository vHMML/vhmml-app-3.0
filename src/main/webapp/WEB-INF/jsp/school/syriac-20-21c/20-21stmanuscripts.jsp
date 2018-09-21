<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Twentieth and Twenty-First Century Manuscripts" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Objectives and Introduction" />
	<tiles:putAttribute name="nextSection" value="diyr-270" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				The object of this lesson is threefold: <br />
				<ol>
					<li>to serve as a reminder that Syriac manuscripts have
						continued to be copied up to the present <a
						href="https://hmmlorientalia.wordpress.com/2012/12/12/continuing-manuscript-culture/"
						target="_blank">(see further)</a>
					</li>
					<li>to show the kinds of supports and writing instruments used
						in these more recent manuscripts</li>
					<li>to offer samples of the continued use of the scripts we
						have looked at so far</li>
				</ol>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					For &#8470; 3, there is really nothing unexpected in terms of
					letter shapes. Estrangela is generally used, if at all, for
					decorative purposes or titles &#40;much as Blackletter or Fraktur
					typefaces may be used in English-language newspaper names, for
					example&#41;, but both Serto and East Syriac have continued in
					regular use throughout the twentieth and twenty-first centuries.
					While the kinds of supports &#40;such as a composition book or
					datebook&#41; and writing instruments &#40;pencil, ballpoint
					pen&#41; may seemingly be more pedestrian than for earlier
					manuscripts and thus confer upon these modern manuscripts less <i>gravitas</i>,
					there is not really a new ductus in letter-forms. These manuscripts
					often appear less carefully executed than at least some earlier
					copies (some of them are actually drafts for works intended to be
					printed). Even in earlier periods, scribes who knew how to write,
					but not necessarily how to write well, nonetheless produced
					manuscripts.
				</p>
				<p>In what follows, sample pages are thus offered with no
					comment on the forms of the letters, but a few remarks highlight
					supports and writing implements.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					<a href="diyr-270"><span
						class="glyphicon glyphicon-chevron-right"></span>&nbsp;Section 2:
						Serto Examples (Parts 1-10)</a>
				</p>
				<p>
					<a href="acz-9"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;Section
						3: East Syriac Examples (Parts 1-9)</a>
				</p>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>