<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 8: Vatican City, Vat. Sir. 118, f. 40v (pre-12th C.)" />
	<tiles:putAttribute name="sectionDescription" value="Jacob of Serugh, <i>Memre</i>" />
	<tiles:putAttribute name="previousSection" value="vat-sir-161-f-113v" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<%-- <h4>Vat. sir. 118 (pre-12th C.)</h4>--%>
				<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 850px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.6",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/vatsir118_0086_fa_0040v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/vatsir118_0086_fa_0040v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from ">
				</noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Sir.
						118, f. 40v.</em></small>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>The script here has a very thick, sharp character.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
				<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td> <ul><li class="letterDescription">top part, ending in a dot, much thinner than the bottom
								part</ul></td>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul><li class="letterDescription">very thick dot at the bottom</li><li class="letterDescription"> the top arm has a
								narrowed middle</li> </ul>
							</td>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul><li class="letterDescription">Serto shape, with a very thick dot as the topmost part</li></ul></td>

						<tr>
							<td><i>h&#275;</i></td>
							<td><ul><li class="letterDescription">Serto shape, with closed loop on left</li> </ul></td>

						<tr>
							<td><i>w&#257;w</i></td>
							<td><ul><li class="letterDescription">a perfect <b>o</b> shape</li></ul></td>


						<tr>
							<td><i>zayn</i></td>
							<td><ul><li class="letterDescription">does not hang below line</li> </ul></td>

						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul><li class="letterDescription">the top and bottom parts are each the same height</li> </ul></td>
						<tr>
							<td><i>yod</i></td>
							<td><ul><li class="letterDescription">very short</li> </ul></td>
						<tr>
							<td><i>mim</i></td>
							<td><ul><li class="letterDescription">top line angles upward</li><li class="letterDescription"> closed loop</li> </ul>
							</td>


						<tr>
							<td><i>semkat</i></td>
							<td><ul><li class="letterDescription">left loop only very slightly taller than the right</li><li class="letterDescription">
								neither loop pointed</li> </ul>
							</td>

						<tr>
							<td><i>&#x02bf;&#275;</i></td>
							<td><ul><li class="letterDescription">the top arm has a narrowed middle</li> </ul></td>
						<tr>
							<td><i>p&#275;</i></td>
							<td><ul><li class="letterDescription">rather tall</li> </ul></td>
						<tr>
							<td><i>&#7779;&#257;d&#275;</i></td>
							<td><ul><li class="letterDescription">thin descender</li> </ul></td>
						<tr>
							<td><i>&#353;in</i></td>
							<td><ul><li class="letterDescription">top part essentially a flat line</li> </ul></td>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul><li class="letterDescription">closed loop</li> </ul></td>

					</tbody>
				</table></span>
			</div>
			</div>
<div class="row">
			<div class="col-lg-12">
				<table class="table syriacLetterforms">
				<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul><li class="letterDescription">top part, ending in a dot, much thinner than the bottom
								part</li></ul></td>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul><li class="letterDescription">very thick dot at the bottom</li><li class="letterDescription"> the top arm has a
								narrowed middle</li> </ul>
							</td>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul><li class="letterDescription">Serto shape, with a very thick dot as the topmost part</li> </ul></td>

						<tr>
							<td><i>h&#275;</i></td>
							<td><ul><li class="letterDescription">Serto shape, with closed loop on left</li> </ul></td>

						<tr>
							<td><i>w&#257;w</i></td>
							<td><ul><li class="letterDescription">a perfect <b>o</b> shape</li></ul></td>


						<tr>
							<td><i>zayn</i></td>
							<td><ul><li class="letterDescription">does not hang below line</li> </ul></td>

						<tr>
							<td><i>&#7789;&#275;t</i></td>
							<td><ul><li class="letterDescription">the top and bottom parts are each the same height</li> </ul></td>
						<tr>
							<td><i>yod</i></td>
							<td><ul><li class="letterDescription">very short</li> </ul></td>
						<tr>
							<td><i>mim</i></td>
							<td><ul><li class="letterDescription">top line angles upward</li><li class="letterDescription"> closed loop</li> </ul>
							</td>


						<tr>
							<td><i>semkat</i></td>
							<td><ul><li class="letterDescription">left loop only very slightly taller than the right</li><li class="letterDescription">
								neither loop pointed</li> </ul>
							</td>

						<tr>
							<td><i>&#x02bf;&#275;</i></td>
							<td><ul><li class="letterDescription">the top arm has a narrowed middle</li> </ul></td>
						<tr>
							<td><i>p&#275;</i></td>
							<td><ul><li class="letterDescription">rather tall</li> </ul></td>
						<tr>
							<td><i>&#7779;&#257;d&#275;</i></td>
							<td><ul><li class="letterDescription">thin descender</li> </ul></td>
						<tr>
							<td><i>&#353;in</i></td>
							<td><ul><li class="letterDescription">top part essentially a flat line</li> </ul></td>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul><li class="letterDescription">closed loop</li> </ul></td>

					</tbody>
				</table>

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>