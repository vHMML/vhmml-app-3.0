<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName"
		value="Section 4: Mardin, CFMM 130, p. 3 (12th/13th C.)" />
	<tiles:putAttribute name="sectionDescription"
		value="Jacob of Serugh, <i>Memre</i>" />
	<tiles:putAttribute name="previousSection" value="cfmm-356" />
	<tiles:putAttribute name="nextSection" value="smmj-60" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 900px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.6",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm130_3r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm130_3r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from Mardin, Turkey">
				</noscript>
				<small><em>Mardin, Church of the Forty Martyrs, CFMM
						130, p. 3. All rights reserved. Image provided by HMML. </em></small>
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>
					This manuscript shows what might be considered a classic Serto
					hand. There are none of the sharper curves akin to Estrangela that
					may appear in earlier Serto manuscripts, and the characteristic
					roundness of <i>b&#275;t</i>, <i>g&#257;mal</i> (hanging very low),
					<i>&#7789;&#275;t</i>, <i>mim</i>, and <i>qop</i> make this an
					exemplary Serto manuscript.
				</p>

				<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>d&#257;lat</i> and <i>r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">hang slightly below the line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td><ul>
									<li class="letterDescription">has the connecting line
										between the vertical and the loop just below the top of the
										vertical</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>l&#257;mad</i></td>
							<td><ul>
									<li class="letterDescription">for final form, the second
										line with a small curve at the top</li>
								</ul></td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">

				<p>
					<abbr title="nota bene = note well">N.b.</abbr> that in the
					combination <i>&#257;lap-l&#257;mad</i>, the <i>&#257;lap</i> is
					not separate from the <i>l&#257;mad</i> at the bottom.
				</p>
				<p>&nbsp;</p>

			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>