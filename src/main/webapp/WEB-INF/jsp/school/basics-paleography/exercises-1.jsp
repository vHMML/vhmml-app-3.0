<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName" value="Review Terms for Script Classes and Letter Parts" />
	
	<tiles:putAttribute name="previousSection" value="scripts-classes" />
	<tiles:putAttribute name="nextSection" value="papyrus" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
	<style type= "text/css" media= "all">
		ol li {list-style-type: lower-alpha;} 
	</style>
		<div class="row">
			<div class="col-lg-11">
				<h4 class="lessonSubheading">Exercise 1: Terms for parts of letters</h4>
				<p>A stroke that hangs down below the baseline is called</p>
				
				<ol>
					<li>an ascender</li>
					<li>a descender</li>
					<li>a minim</li>
				</ol>
				
				<div class="row">
					<div class="col-lg-12">
						<button class="btn left school showAnswer">Display the
							Answer</button>
						<span class="exerciseAnswer">
							<p>
								b. a descender 
							</p>
						</span>
					</div>
				</div>
				<hr />
				<h4 class="lessonSubheading">Exercise 2: Majuscule or minuscule?</h4>

				<p>Which one of these is a minuscule script?</p>

			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6  lesson-image">
					&nbsp;a.
					<img
							src="${pageContext.request.contextPath}/static/img/school/basics-paleography/StGallen-CodSang116p3croptop.jpg"
							alt="Latin parchment manuscript page from Saint Gallen, 116">
					
					<br /><small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
							116, p. 3. (<a href="http://www.e-codices.unifr.ch"
							target="_blank">www.e&#8209;codices.unifr.ch</a>)
					</em></small>

				</div>
				<div class="col-lg-4 col-md-6 lesson-image">
					&nbsp;b.
					 <img
							src="${pageContext.request.contextPath}/static/img/school/basics-paleography/Walters-W7-10r_cropped300.jpg"
							alt="manuscript page from Walters, 7">
					
					<br /><small><em>Walters Art Museum, W.7, f. 10r. &copy; 2011
							Walters Art Museum, used under a <a
							href="https://creativecommons.org/licenses/by-nc-sa/3.0/"
							target="_blank">CC BY-SA license</a>.
					</em></small>
				</div>
				<div class="col-lg-4 col-md-6 lesson-image">
					&nbsp;c.
					 <img
							src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen1394/GeneratedImages/dzc_output_files/9/0_0.jpg"
							alt="Latin parchment manuscript page from Saint Gallen, 1394">
					
					<br /><small><em>St. Gallen, Stiftsbibliothek, Cod. Sang.
							1394, p. 12. (<a href="http://www.e-codices.unifr.ch"
							target="_blank">www.e&#8209;codices.unifr.ch</a>)
					</em></small>
					<p></p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<button class="btn left school showAnswer">Display the
						Answer</button>
					<span class="exerciseAnswer">
						<p>
							b. <em>Walters W.7, f. 10r.</em> is minuscule script.
						</p>
						<hr />
					</span>
				</div>
			</div>
			<p>&nbsp;</p>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>
