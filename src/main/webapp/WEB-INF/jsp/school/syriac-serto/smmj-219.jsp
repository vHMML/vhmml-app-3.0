<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 14: Jerusalem, SMMJ 219, ff. 91v-92r (dated 1788/89)" />
	<tiles:putAttribute name="sectionDescription"
		value="Eudochos, <i>Lexicon</i>" />
	<tiles:putAttribute name="previousSection" value="smmj-62" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj219_92/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj219_92/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from ">
				</noscript>
				<small><em>Jerusalem, St. Mark's Monastery, SMMJ 219,
						ff. 91v-92r. All rights reserved. Image provided by HMML.</em></small>
				<p>&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>This later manuscript, complete with several marginal notes,
					is similar in appearance to later, even modern manuscripts <%-- (on
					which see the lessons for 20/21 C.)--%>. This is due to the kind of ink used,
					less rich than that found in earlier times, and the kind of paper.
					The scribe has included very many (West Syriac) vowels.</p>
				<p>
					Tall letters that have a single vertical line (<i>&#257;lap</i>,
					unattached <i>&#7789;&#275;t</i>, <i>l&#257;mad</i>, unattached <i>t&#257;w</i>)
					are often hooked at the top. In addition, note the following:
				</p>
		
				<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap </i></td>
							<td><ul>
									<li class="letterDescription">in initial position may be
										very curvy with the top angling back to the right</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>qop</i></td>
							<td>
								<ul>
									<li class="letterDescription">often higher on the left
										than the right</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>