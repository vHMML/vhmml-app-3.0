<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Earliest Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Vatican City, Vat Sir. 160, f. 140v  (6th C. [?])" />
	<tiles:putAttribute name="sectionDescription" value="Lives of Saints and Martyrs" />
	<tiles:putAttribute name="previousSection" value="estrangela" />
	<tiles:putAttribute name="nextSection" value="diyr339" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12 lesson-image">
			<p>&nbsp;</p>
				<div id="openseadragon1"
					style="width: 900px; height: 850px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.7",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/vatsir160_0286_fa_0140/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/vatsir160_0286_fa_0140/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Syriac manuscript page from the Vatican Library">
				</noscript>
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Sir.
						160, f. 140v.</em></small>

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
								<td>
									<ul>
										<li class="letterDescription">when connected and not,
											there is a serif on the right leg</li>
										<li class="letterDescription">left leg sits a little
											below the line</li>
										<li class="letterDescription">top part may have upward
											turn or serif</li>
										<li class="letterDescription">height of top part varies</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td>
									<ul>
										<li class="letterDescription">ends well below line, but
											without the thick dot of some later examples</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>d&#257;lat / r&#275;&#353;</i></td>
								<td>
									<ul>
										<li class="letterDescription">usually a very short, round
											top part yields almost a Serto shape, but sometimes the more
											usual Estrangela form</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td>
									<ul>
										<li class="letterDescription">center post angles to the
											left</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td>
									<ul>
										<li class="letterDescription">quite round, but right side
											usually straighter</li>
										<li class="letterDescription">unclosed loop</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#7717;&#275;t</i></td>
								<td>
									<ul>
										<li class="letterDescription">about the same height as <i>yod</i></li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#7789;&#275;t</i></td>
								<td>
									<ul>
										<li class="letterDescription">very tall</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>yod</i></td>
								<td>
									<ul>
										<li class="letterDescription">final, unconnected form
											with left extender (esp. at line end), or of the angled type</li>
										<li class="letterDescription">final, connected form of
											the angled type</li>
									</ul>
								</td>
							</tr>
							
					<tr>
							<td><i>k&#257;p</i></td>
							<td>
								<ul>
									<li class="letterDescription">slightly more sharp than
										round on top, but not to a point</li>
									<li class="letterDescription">final form with long tail</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>l&#257;mad</i></td>
							<td>
								<ul>
									<li class="letterDescription">very tall, notably thicker
										at the top</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td>
								<ul>
									<li class="letterDescription">loop open</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td>
								<ul>
									<li class="letterDescription">very round loops, left one
										taller</li>
									<li class="letterDescription">does not join following
										letter</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>&#x02BF;&#275;</i></td>
							<td>
								<ul>
									<li class="letterDescription">elongated initial form</li>
									<li class="letterDescription">relatively narrow angle
										between top and lower part</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td>
								<ul>
									<li class="letterDescription">very tall, loop open</li>
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
						<td>
							<ul>
								<li class="letterDescription">when connected and not, there
									is a serif on the right leg</li>
								<li class="letterDescription">left leg sits a little below
									the line</li>
								<li class="letterDescription">top part may have upward turn
									or serif</li>
								<li class="letterDescription">height of top part varies</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>g&#257;mal</i></td>
						<td>
							<ul>
								<li class="letterDescription">ends well below line, but
									without the thick dot of some later examples</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>d&#257;lat / r&#275;&#353;</i></td>
						<td>
							<ul>
								<li class="letterDescription">usually a very short, round
									top part yields almost a Serto shape, but sometimes the more
									usual Estrangela form</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>h&#275;</i></td>
						<td>
							<ul>
								<li class="letterDescription">center post angles to the
									left</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>w&#257;w</i></td>
						<td>
							<ul>
								<li class="letterDescription">quite round, but right side
									usually straighter</li>
								<li class="letterDescription">unclosed loop</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>&#7717;&#275;t</i></td>
						<td>
							<ul>
								<li class="letterDescription">about the same height as <i>yod</i></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>&#7789;&#275;t</i></td>
						<td>
							<ul>
								<li class="letterDescription">very tall</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td><i>yod</i></td>
						<td>
							<ul>
								<li class="letterDescription">final, unconnected form with
									left extender (esp. at line end), or of the angled type</li>
								<li class="letterDescription">final, connected form of the
									angled type</li>
							</ul>
						</td>
					</tr>
					</tbody>
					</table>
				
			</div>
</div>

					
		<div class="row">
			<div class="col-lg-11  lesson-image">
				<p class="imageTitle"><i>yod</i> &#8212; example of the final, unconnected form
					with left extender, col. b</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/VatSir160140vb_l13extended_yod.jpg"
					alt="several characters from one line from Vatican Syriac manuscript page">

				<br />
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Sir.
						160, f. 140vb, l. 13.</em></small>
				<hr />
				<p class="imageTitle"><i>yod</i> &#8212; example of the final, unconnected angled
					form, col. a</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/VatSir160f140v_cola_angled_yod.jpg"
					alt="several characters from Vatican Syriac manuscript page">
				<br />
				<small><em>&copy; Bibliotheca Apostolica Vaticana, Sir.
						160, f. 140va, l. 12.</em></small>

			</div>
		</div>
 <div class="row">
	<div class="col-lg-12">
			<table class="table syriacLetterforms">
				
				<tbody>
					<tr>
							<td><i>k&#257;p</i></td>
							<td>
								<ul>
									<li class="letterDescription">slightly more sharp than
										round on top, but not to a point</li>
									<li class="letterDescription">final form with long tail</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>l&#257;mad</i></td>
							<td>
								<ul>
									<li class="letterDescription">very tall, notably thicker
										at the top</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>mim</i></td>
							<td>
								<ul>
									<li class="letterDescription">loop open</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>semkat</i></td>
							<td>
								<ul>
									<li class="letterDescription">very round loops, left one
										taller</li>
									<li class="letterDescription">does not join following
										letter</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>&#x02BF;&#275;</i></td>
							<td>
								<ul>
									<li class="letterDescription">elongated initial form</li>
									<li class="letterDescription">relatively narrow angle
										between top and lower part</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td>
								<ul>
									<li class="letterDescription">very tall, loop open</li>
								</ul>
							</td>
						</tr>
				

			
		
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-11">
				<p class="imageTitle">
					 elongated initial <i>&#x02BF;&#275;</i>
				</p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/VatSir160f140va_l1.jpg"
					alt="several characters from one line from Vatican Syriac manuscript page">
				<br /> <small><em>&copy; Bibliotheca Apostolica
						Vaticana, Sir. 160, f. 140va, l. 1.</em></small>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>