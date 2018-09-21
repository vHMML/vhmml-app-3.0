<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Earliest Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: London, BL Add. 12150, f. 235v (dated 411)" />
	<tiles:putAttribute name="sectionDescription"
		value="Eusebius of Caesarea" />
	<tiles:putAttribute name="nextSection" value="vat-sir160f140v" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					Here we take a look at the earliest Syriac codices, beginning with
					the earliest dated Syriac manuscript, the famous <abbr
						title="British Library">BL</abbr> Add. 12150, copied in the year
					411, up to about the seventh century. The examples we consider here
					have similarities with each other as well as with some later
					Estrangela books, but there are, of course, also more particular
					characteristics for each scribe&#8217;s work. In addition, the
					assumed hallmarks of a particular letter and script-type may not
					show up where we expect them to. We see, for example, that the 411
					manuscript does not usually have the sharp, angled form of <i>d&#257;lat</i>
					and <i>r&#275;&#353;</i>, but a shape we might describe as
					perfectly matching a Serto form. The <i>r&#275;&#353;</i> is
					written in the presumably later (Serto) shape; the <i>d&#257;lat</i>
					is written in both the assumed Estrangela form and in the Serto
					form. Here we have both <i>d&#257;lat</i> and <i>r&#275;&#353;</i>
					in one word, both in the Serto form.
				</p>
				<p class="lessonImage">
					<img
						src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/BL_Add12150f.235vcl.28.jpg"
						width="520"
						alt="part of one line from column C of Syriac manuscript page from The British Library">
				</p>

				<small><em>&copy; The British Library Board, Add.
						12150, f. 235vc, l. 28.</em></small>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p>No attempt will be made to provide a complete inventory of
					the least common denominators, or fundamental characteristics, for
					the examples of the handwriting of these manuscripts. But a few
					observations on letterforms in each manuscript may serve as an
					initial guide for a foray into these and similar manuscripts. For
					each chosen manuscript, a sample page in its
					entirety is included, and a few additional images show specific
					forms.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
				<div id="openseadragon1"
					style="width: 900px; height: 900px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.7",
						maxZoomLevel : "10",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bladd12150f235v/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bladd12150f235v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from British Library, dated 411 common era">
				</noscript>
				<small><em>&copy; The British Library Board, Add.
						12150, f. 235v.</em></small>


				<p>Note first of all that the text stands in three columns.
					Early Syriac manuscripts were mostly written in one or two, less
					often three, and later there are examples, although few, of
					four-column manuscripts.</p>
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
								<td><ul>
										<li class="letterDescription">when connected and not,
											there is a serif on the right leg</li>
										<li class="letterDescription">left leg sits a little
											below the line</li>
										<li class="letterDescription">top part may have upward
											turn</li>
										<li class="letterDescription">height of top part varies</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td><ul>
										<li class="letterDescription">ends well below line, but
											without the thick dot of some later examples</li>
									</ul></td>


							</tr>
							<tr>
								<td><i>d&#257;lat</i></td>
								<td><ul>
										<li class="letterDescription">sometimes with Serto shape,
											but sometimes distinct from <i>r&#275;&#353;</i> in having
											usual Estrangela shape
										</li>
									</ul></td>


							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td><ul>
										<li class="letterDescription">center post angles to the
											left</li>
									</ul></td>

							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">quite round, but right side
											usually straighter</li>
										<li class="letterDescription">unclosed loop</li>
									</ul></td>

							</tr>
							<tr>
								<td><i>&#7717;&#275;t</i></td>
								<td><ul>
										<li class="letterDescription">about the same height as <i>yod</i></li>
									</ul></td>


							</tr>
							<tr>
								<td><i>&#7789;&#275;t</i></td>
								<td><ul>
										<li class="letterDescription">very tall</li>
									</ul></td>


							</tr>
							<tr>
								<td><i>yod</i></td>
								<td><ul>
										<li class="letterDescription">final, unconnected form of
											the angled type, almost like a comma</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td><ul>
										<li class="letterDescription">slightly more sharp than
											round on top, but not to a point</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>l&#257;mad</i></td>
								<td><ul>
										<li class="letterDescription">very tall</li>
										<li class="letterDescription">notably thicker at the top</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">top horizontal angles
											notably upward</li>
										<li class="letterDescription">loop open, or barely closed</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>nun</i></td>
								<td><ul>
										<li class="letterDescription">when final and unconnected
											to previous letter, very thick at the top, very thin
											thereafter, and sharply angled</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td><ul>
										<li class="letterDescription">very round loops, left one
											taller</li>
										<li class="letterDescription">does not join following
											letter</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>&#x02BF;&#275;</i></td>
								<td><ul>
										<li class="letterDescription">thick top part</li>
										<li class="letterDescription">relatively narrow angle
											between top and lower part</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>qop</i></td>
								<td><ul>
										<li class="letterDescription">sharp on the left, more
											round on the right</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">typically with Serto shape,
											and thus often distinct from <i>d&#257;lat</i>
										</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">very tall</li>
										<li class="letterDescription">loop sometimes open,
											sometimes closed</li>
									</ul></td>
							</tr>

						</tbody>
					</table>

				</span>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="container">

					<table class="table syriacLetterforms">
					<caption>Distinctive Letterforms</caption>
						<tbody>
							<tr>
								<td><i>&#257;lap</i></td>
								<td><ul>
										<li class="letterDescription">when connected and not,
											there is a serif on the right leg</li>
										<li class="letterDescription">left leg sits a little
											below the line</li>
										<li class="letterDescription">top part may have upward
											turn</li>
										<li class="letterDescription">height of top part varies</li>
									</ul></td>
							</tr>
						</tbody>
					</table>




					<p  class="imageTitle">
						Example of the <i>&#257;lap</i> with connector-serif
					</p>

					<img
						src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/BL_Add12150f.235cropl22.jpg"
						width="350"
						alt="part of column A of Syriac manuscript page from The British Library">
					<br /> <small><em>&copy; The British Library Board,
							Add. 12150, f. 235va, ll. 20-22.</em></small>
					<p>&nbsp;</p>



					<table class="table syriacLetterforms">
					
						<tbody>
							<tr>
								<td><i>g&#257;mal</i></td>
								<td><ul>
										<li class="letterDescription">ends well below line, but
											without the thick dot of some later examples</li>
									</ul></td>


							</tr>
							<tr>
								<td><i>d&#257;lat</i></td>
								<td><ul>
										<li class="letterDescription">sometimes with Serto shape,
											but sometimes distinct from <i>r&#275;&#353;</i> in having
											usual Estrangela shape
										</li>
									</ul></td>


							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td><ul>
										<li class="letterDescription">center post angles to the
											left</li>
									</ul></td>

							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">quite round, but right side
											usually straighter</li>
										<li class="letterDescription">unclosed loop</li>
									</ul></td>

							</tr>
							<tr>
								<td><i>&#7717;&#275;t</i></td>
								<td><ul>
										<li class="letterDescription">about the same height as <i>yod</i></li>
									</ul></td>


							</tr>
							<tr>
								<td><i>&#7789;&#275;t</i></td>
								<td><ul>
										<li class="letterDescription">very tall</li>
									</ul></td>


							</tr>
							<tr>
								<td><i>yod</i></td>
								<td><ul>
										<li class="letterDescription">final, unconnected form of
											the angled type, almost like a comma</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td><ul>
										<li class="letterDescription">slightly more sharp than
											round on top, but not to a point</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>l&#257;mad</i></td>
								<td><ul>
										<li class="letterDescription">very tall</li>
										<li class="letterDescription">notably thicker at the top</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td><ul>
										<li class="letterDescription">top horizontal angles
											notably upward</li>
										<li class="letterDescription">loop open, or barely closed</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>nun</i></td>
								<td><ul>
										<li class="letterDescription">when final and unconnected
											to previous letter, very thick at the top, very thin
											thereafter, and sharply angled</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td><ul>
										<li class="letterDescription">very round loops, left one
											taller</li>
										<li class="letterDescription">does not join following
											letter</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>&#x02BF;&#275;</i></td>
								<td><ul>
										<li class="letterDescription">thick top part</li>
										<li class="letterDescription">relatively narrow angle
											between top and lower part</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>qop</i></td>
								<td><ul>
										<li class="letterDescription">sharp on the left, more
											round on the right</li>
									</ul></td>
							</tr>
							<tr>
								<td><i>r&#275;&#353;</i></td>
								<td><ul>
										<li class="letterDescription">typically with Serto shape,
											and thus often distinct from <i>d&#257;lat
										</li>
									</ul>
									</i></td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td><ul>
										<li class="letterDescription">very tall</li>
										<li class="letterDescription">loop sometimes open,
											sometimes closed</li>
									</ul></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<p>&nbsp;</p>
	</tiles:putAttribute>
</tiles:insertTemplate>