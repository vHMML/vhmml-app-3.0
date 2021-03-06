<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 10: Mosul, DFM 13, f. 45r (dated 1723)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary" />
	<tiles:putAttribute name="previousSection" value="qaact-10" />
	<tiles:putAttribute name="nextSection" value="ccm-71" />
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
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/dfm13_45v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/dfm13_45v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from DFM 13">
				</noscript>
				<small><em>Mosul, Dominican Friars, DFM 13, f. 45r. All
						rights reserved. Image provided by HMML.</em></small>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
					<tbody>

						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">of the Estrangela type</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">in final form, angular, not
										round, and with a very thin descender curving back to the
										right</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">also of the Estrangela type</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>