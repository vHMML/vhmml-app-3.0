<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName" value="Section 9: Hamatura, HMTR 26, ff. 10v-11r (dated 1605)" />
	<tiles:putAttribute name="sectionDescription" value="Gospel Lectionary with Commentary" />
	<tiles:putAttribute name="previousSection" value="diyr-335" />
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/hmtr26_11r10v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/hmtr26_11r10v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from HMTR 026">
				</noscript>
				<small><em>Hamatura, Monastery of the Theotokos, HMTR
						26, ff. 10v-11r. All rights reserved. Image provided by HMML.</em></small>
				<p>&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>The hand of this manuscript shows a bit more variation in
					line thickness than other Melkite manuscripts.</p>
				<p>
					At word-end, letters that would end in a line at baseline (e.g. <i>b&#275;t</i>,
					<i>&#353;in</i>) often have a high, sharp uptick. At or just before
					line-end, letters or connectors may be stretched to fill the line.
				</p>

				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
					<table class="table">
						<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>&#257;lap</i></td>
								<td><ul>
										<li class="letterDescription">in both types, the
											Estrangela form (with a curly top) especially at line-end</li>
										<li class="letterDescription">the right leg of the
											Estrangela type hanging below the line</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>b&#275;t</i> and <i>qop</i></td>
								<td><ul>
										<li class="letterDescription">much wider than other
											letters</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td><ul>
										<li class="letterDescription">with the vertical hanging
											below the line</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>&#7717;&#275;t</i> and <i>yod</i></td>
								<td><ul>
										<li class="letterDescription">sharp tooth-like shapes
											very thick at the bottom</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>&#7789;&#275;t</i></td>
								<td><ul>
										<li class="letterDescription">not as tall as <i>&#257;lap</i>
											or <i>l&#257;mad</i></li>
									</ul></td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td><ul>
										<li class="letterDescription">with a ductus more like
											that in Serto than East Syriac</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>l&#257;mad</i></td>
								<td><ul>
										<li class="letterDescription">in final form, not quite
											the double-line seen in Serto, but a long tail, slightly
											freer, almost paralleling the first stroke of the letter</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">neither round, nor quite
											square or rectangular, but almost trapezoidal</li>
									</ul>
							</td>
							</tr>
						</tbody>
					</table>
				</span>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">in both types, the
										Estrangela form (with a curly top) especially at line-end</li>
									<li class="letterDescription">the right leg of the
										Estrangela type hanging below the line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>b&#275;t</i> and <i>qop</i></td>
							<td><ul>
									<li class="letterDescription">much wider than other
										letters</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td><ul>
									<li class="letterDescription">with the vertical hanging
										below the line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7717;&#275;t</i> and <i>yod</i></td>
							<td><ul>
									<li class="letterDescription">sharp tooth-like shapes very
										thick at the bottom</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul>
									<li class="letterDescription">not as tall as <i>&#257;lap</i>
										or <i>l&#257;mad</i></li>
								</ul></td>
						</tr>
						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul>
									<li class="letterDescription">with a ductus more like that
										in Serto than East Syriac</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>l&#257;mad</i></td>
							<td><ul>
									<li class="letterDescription">in final form, not quite the
										double-line seen in Serto, but a long tail, slightly freer,
										almost paralleling the first stroke of the letter</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td><ul>
									<li class="letterDescription">neither round, nor quite
										square or rectangular, but almost trapezoidal</li>
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