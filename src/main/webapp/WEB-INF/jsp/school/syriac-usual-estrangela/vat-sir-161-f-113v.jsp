<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Usual Estrangela" />
	<tiles:putAttribute name="sectionName" value="Section 7: Vatican City, Vat. Sir. 161, f. 113v (9th C.)" />
	<tiles:putAttribute name="sectionDescription" value="<i>Acts of the Persian Martyrs</i>" />
	<tiles:putAttribute name="previousSection" value="smmj-129" />
	<tiles:putAttribute name="nextSection" value="vat-sir-118-f40v" />
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
						minZoomLevel : "0.7",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/vatsir161_0230_fa_0113v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/vatsir161_0230_fa_0113v/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page showing usual estrangela  script">
				</noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Sir.
						161, f. 113v.</em></small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			<p>&nbsp;</p>
			<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> <span class="answerTitle"></span>
				<table class="table">
				<caption>Distinctive Letterforms</caption>
					<tbody>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul><li class="letterDescription">Serto shape</li> </ul></td>

						<tr>
							<td><i>h&#275;</i></td>
							<td><ul><li class="letterDescription">Serto shape, with closed loop on the left</li> </ul></td>

						<tr>
							<td><i>w&#257;w</i></td>
							<td>							
<ul><li class="letterDescription">may have an angle on the top right or be curved</li><li class="letterDescription">
								loop generally open, but may be closed</li> </ul>
							</td>

						<tr>
							<td><i>zayn</i></td>
							<td><ul><li class="letterDescription">does not hang below lines</li><li class="letterDescription"> thicker at the top</li> </ul>
							</td>

						<tr>
							<td><i>yod</i></td>
							<td><ul><li class="letterDescription">joined form often rather tall, but not quite as tall as
								<i>nun</i></li><li class="letterDescription"> final isolated form is the comma shape</li> </ul>
							</td>

						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul><li class="letterDescription">final form more jagged than curved</li> </ul></td>

						<tr>
							<td><i>mim</i></td>
							<td><ul><li class="letterDescription">loop closed</li><li class="letterDescription"> top part curves upward</li> </ul>
							</td>

						<tr>
							<td><i>semkat</i></td>
							<td><ul><li class="letterDescription">joins with following letter</li><li class="letterDescription"> both loops about the
								same size</li> </ul>
							</td>

						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul><li class="letterDescription">either with very tight loop, essentially closed, or the
								more common Estrangela type</li></ul></td>
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
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul><li class="letterDescription">Serto shape</li></ul></td>

						<tr>
							<td><i>h&#275;</i></td>
							<td><ul><li class="letterDescription">Serto shape, with closed loop on the left</li></ul></td>

						<tr>
							<td><i>w&#257;w</i></td>
							<td>							
<ul><li class="letterDescription">may have an angle on the top right or be curved</li><li class="letterDescription">
								loop generally open, but may be closed</li> </ul>
							</td>

						<tr>
							<td><i>zayn</i></td>
							<td><ul><li class="letterDescription">does not hang below lines</li><li class="letterDescription"> thicker at the top</li> </ul>
							</td>

						<tr>
							<td><i>yod</i></td>
							<td><ul><li class="letterDescription">joined form often rather tall, but not quite as tall as
								<i>nun</i></li><li class="letterDescription"> final isolated form is the comma shape</li> </ul>
							</td>

						<tr>
							<td><i>k&#257;p</i></td>
							<td><ul><li class="letterDescription">final form more jagged than curved</li></ul></td>

						<tr>
							<td><i>mim</i></td>
							<td><ul><li class="letterDescription">loop closed</li><li class="letterDescription"> top part curves upward</li> </ul>
							</td>

						<tr>
							<td><i>semkat</i></td>
							<td><ul><li class="letterDescription">joins with following letter</li><li class="letterDescription"> both loops about the
								same size</li> </ul>
							</td>

						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul><li class="letterDescription">either with very tight loop, essentially closed, or the
								more common Estrangela type</li></ul></td>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>