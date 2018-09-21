<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Humanist Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Humanist Minuscule" />
	<tiles:putAttribute name="previousSection" value="historical-overview" />
	<tiles:putAttribute name="nextSection" value="humanist-cursive" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>Poggio&#8217;s reformed script brought back the small
					minim-height and careful spacing of his Caroline models. The change
					in aspect and aesthetics from Gothic script is striking. This
					manuscript, written in Florence around the year 1410, was copied
					from one written by Poggio and closely imitates his handwriting:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div id="openseadragon1"
					style="width: 900px; height: 500px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1", // normally defaults to 0
						minZoomLevel : "0.4",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/stgallen-vadsamm298f2r/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="manuscript page from St. Gallen manuscript 298">
				</noscript>
				<small><em>St. Gallen, Kantonsbibliothek, Vadianische
						Sammlung, VadSlg Ms. 298, f.2r. (<a
						href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
				</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">

				<p>&nbsp;</p>
				<h4 class="lessonSubheading">Letterforms</h4>
				<p>Poggio&#8217;s new script was systematically purged of Gothic
					scribal habits, both in spelling and in the choice of letterforms.
					The letterforms of Humanist minuscule are essentially those of
					Caroline minuscule. If you recall the changes in letterforms that
					mark the transition from Caroline to Gothic, you will have a sense
					of the changes that Poggio rolled back. The most important are:</p>
				<ul>
					<li>upright <b>d</b> replaced Uncial <b>d</b></li>
					<li>tall <b>s</b> was reintroduced at word-end in place of
						round <b>s</b></li>
					<li>the <b>u</b> form of <b>u/v</b> replaced <b>v</b>, which
						had become normal in Gothic cursives at the beginning of words.
					</li>
				</ul>
				<p>All these changes are seen in these details from the
					manuscript above:</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/humanist-paleography/vadslgms298_crop1.jpg"
					alt="partial line of Humanist text from manuscript"><strong>
					genus si ad uerbum</strong>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					In addition, the ampersand (<b>e-t</b> ligature) replaced the
					Tironian <b>et</b>, which had taken over in all Gothic scripts by
					the 13th century.
				</p>
				<p>
					However, purging a script of the training of a lifetime and of
					scribal habits that are all around in the culture is as difficult
					as eliminating anachronisms from the language of a historical
					novel. Even in very careful imitations of Poggio&#8217;s new
					script, Gothic habits slip in. These details from the same
					manuscript show an Uncial <b>d</b> and a Tironian <b>et</b>, plus
					an Italian Gothic form of the <b>con-</b> abbreviation, slipped in
					among careful uses of final tall <b>s</b> and other reformed
					features:
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-7 col-lg-5">

				<img
					src="${pageContext.request.contextPath}/static/img/school/humanist-paleography/vadslgms298_crop2.jpg"
					alt="three partial lines of text showing detail from St. Gallen manuscript"
					class="center-block"> &nbsp; &nbsp; &nbsp;
			</div>

			<div class="col-sm-7 col-md-7 col-lg-5">
				<img
					src="${pageContext.request.contextPath}/static/img/school/humanist-paleography/vadslgms298_crop3.jpg"
					alt="several partial lines of Humanist text from manuscript"
					class="center-block" />

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p class="text-center">
					Details above from <small><em>St. Gallen,
							Kantonsbibliothek, Vadianische Sammlung, VadSlg Ms. 298, f.2r. (<a
							href="http://www.e-codices.unifr.ch" target="_blank">www.e-codices.unifr.ch</a>)
					</em></small>
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					Another early-15th-century Humanist manuscript by a scribe from the north of
					Italy shows round <b>s</b>s and hints of <em>biting</em> where the
					round parts of <b>h</b> and <b>e</b> meet &#8212; both Gothic
					features, which, strictly speaking, should not be there:
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/humanist-paleography/bodmer137_crop1.jpg"
					alt="first four lines of main text of Bodmer 137 manuscript" /> <br />
				<small><em>Cologny, Fondation Martin Bodmer, Cod.
						Bodmer 137, f. 1r. (<a href="http://www.e-codices.unifr.ch"
						target="_blank">www.e&#8209;codices.unifr.ch</a>)
				</em></small>
				<p>&nbsp;</p>
				<p>If you are ever in doubt about whether you are looking at a
					Carolingian manuscript or a Humanist imitation of Caroline, look
					for this telltale Gothic slip-up.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>