<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Carolingian Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Caroline Minuscule: Aspect and Letterforms" />
	<tiles:putAttribute name="previousSection"
		value="historical-orientation" />
	<tiles:putAttribute name="nextSection" value="hierarchy-scripts" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					<b>Aspect:</b> Caroline Minuscule is neither compressed nor spaced
					out laterally. Caroline Minuscule has a comparatively small minim
					height and is normally written with plenty of space between lines.
					That feature, combined with generally careful word-spacing and
					regular letter-spacing, lends the script a tidy, upright
					appearance. Plenty of space between lines also means that the page
					as a whole has an open, spacious feel.
				</p>

				<p></p>

				<div class="row">
					<div class="col-lg-6">
						
							
							<p>Note the relationship between the small
							minim-height and large space between one line and the next.
						</p>
						<img
							src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/line_ANNOT.jpg"
							width="400" alt=" several lines of text from Carolingian minuscule manuscript   with a  horizontal line showing the average heights of the  characters on one line"> <br />
						<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
								116, p. 3. (<a href="http://www.e-codices.unifr.ch"
								target="_blank">www.e-codices.unifr.ch</a>)
						</em></small>
						<p></p>
					</div>


					<div class="col-lg-6">
						<p>Large spaces between lines and plenty of space in the
							margin lend this Carolingian manuscript page a characteristically
							open, legible appearance.</p>
						<img
							src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/StGallen-CodSang116-p3_ANNOT.jpg"
							width="300" alt="full page  of manuscript showing the  margins">
						<br/>
						<small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
								116, p. 3. (<a href="http://www.e-codices.unifr.ch"
								target="_blank">www.e-codices.unifr.ch</a>)
						</em></small>
 <p>&nbsp; </p> 					</div>
				</div>

			</div>
		</div>
		<hr />

		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">Letterforms</h4>
				
							
				<p>Most of the letterforms of Caroline Minuscule will be
					familiar from Half-Uncial or from our modern alphabet:</p>

			</div>
		</div>
		<div class="row">

			<div class="col-lg-2">

				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/a-1_ANNOT.jpg"
					alt=" Snippet of  manuscript showing Carolingian  letter a">

			</div>



			<div class="col-lg-10">
				<p>
					<b>a</b> is a development of uncial <b>A</b>, with a sloping stroke
					on the right poking just a little way above the lobe on the left.
				</p>
			</div>
		</div>

		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-2">
				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/d-2_ANNOT.jpg"
					alt="Snippet of  manuscript showing Carolingian  letter d ">
			</div>

			<div class="col-lg-10">
				<p>
					The <strong>d</strong> has an upright ascender, as in Half-Uncial.
				</p>
			</div>
		</div>
		<p>&nbsp;</p>

		<div class="row">
			<div class="col-lg-2">
				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/s-3_ANNOT.jpg"
					alt=" Snippet of  manuscript showing Carolingian letter s">
			</div>
			<div class="col-lg-10">
				<p>
					<b>s</b> is always tall, at beginning, middle, and end of words;
					the rounded Uncial <b>s</b> is not used.
				</p>
			</div>
		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-2">
				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/r-4_ANNOT.jpg"
					alt="Snippet of  manuscript showing Carolingian  letter r ">
			</div>
			<div class="col-lg-10">
				<p>
					Be careful not to confuse tall <b>s</b> with <b>r</b>. In this script, as in most medieval minuscules, <b>s</b> has a
					higher shoulder that reaches up above minim-height<%--<em>lexicon
						link</em>] --%>, whereas <b>r</b>'s shoulder is a little flourish <em>at&nbsp;</em>
					minim-height, or, in some varieties, a sharp point at the top
					followed by a downward flourish.
				</p>
			</div>
		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-md-3 col-lg-3">
				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/fs-5_ANNOT.jpg"
					alt="Snippet of  manuscript showing Latin word manifesta">
			</div>
			<div class="col-md-9 col-lg-9">
				<p>
					Also note the difference between <b>f</b> and <b>s</b>. This word
					is <b>manifesta</b>.
				</p>
			</div>
		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-2">
				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/e-6_ANNOT.jpg"
					alt=" Snippet of  manuscript showing Carolingian  letters e and t">
			</div>
			<div class="col-lg-10">
				<p>
					<b>e</b> typically has a tongue that reaches out to the right and
					may join up with following the following letter, as it does with <b>t</b>
					here. The upright stroke of <b>t</b> reaches barely or not at all
					above its cross-stroke.
				</p>

			</div>

		</div>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-lg-2">
				<img
					src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/g-7_ANNOT.jpg"
					alt="Snippet of  manuscript showing Carolingian  letter g ">
			</div>
			<div class="col-lg-10">
				<p>
					A form that is new to medieval script with Caroline Minuscule is
					the <b>g</b>, with a bow on the baseline and another on the tail,
					both facing left. Individual scribes&#8217; <b>g</b>&#8217;s may be
					very distinctive and are a good way to spot a change of hand in a
					manuscript, but they will usually follow this general form.
				</p>
				<p>
							 <small>All images above are from <em>St. Gallen, Stiftsbibliothek,  Cod. Sang. 116, p. 3. (<a href="http://www.e-codices.unifr.ch"
								target="_blank">www.e-codices.unifr.ch</a>)</em>
								 </small>
								 </p>
								<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>