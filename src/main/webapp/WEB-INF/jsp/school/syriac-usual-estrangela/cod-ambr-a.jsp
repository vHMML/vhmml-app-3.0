<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Usual Estrangela" />
	<tiles:putAttribute name="sectionName"
		value="Section 5: Milan, Cod. Ambr. A (C313 Inf.; 8th/9th C.), f. 126ra" />
	<tiles:putAttribute name="sectionDescription" value="Syro-Hexapla" />
	<tiles:putAttribute name="previousSection" value="cfmm-309" />
	<tiles:putAttribute name="nextSection" value="smmj-129" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					A <a
						href="https://archive.org/details/CerianiCodexSyroHexaplarisAmbrosianusMonumentaSacraEtProfana7Milan1874_201312"
						target="_blank">legible facsimile of Cod. Ambr. A is available
						here.</a> This manuscript has overall a sharper, more angular ductus
					than the fifth century manuscripts, and with a shorter line height.
				</p>
				
				
					
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 lesson-image">
			<p class="imageTitle">Codex Syro-hexaplaris Ambrosianus, f. 126r, with <abbr title="Jeremiah">Jer</abbr> 25:9-10 <small>(static non-zoomable image)</small></p>
				<img
					src="${pageContext.request.contextPath}/static/img/school/syriac-estrangela/CodAmbrA126ra.jpg"
					alt="some lines from first column from Codex Syro-hexaplaris Ambrosianus">
				<br /> <small><em>Milan, Cod. Ambr. A, f. 126ra,
						ll. 24-33.</em></small>
						
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			
					<p>Note the
					hexaplaric signs inherited from Origen (and in turn, from
					Alexandrian Homeric scholarship) to indicate pluses, minuses and
					other textual relationships between the Hebrew text and the
					translated, and thus here the Syriac text based on the Greek (see
					further B.M. Metzger, <i>Manuscripts of the Greek Bible</i>, &#167; 22).
				</p>
				<p>&nbsp; </p>
				<button class="btn left school showAnswer">Float table of
					letterforms</button>
				<span class="exerciseAnswer"> 
				<span class="answerTitle"></span>
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
											turn</li>
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
										<li class="letterDescription">angled, more usual
											Estrangela form</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>h&#275;</i></td>
								<td>
									<ul>
										<li class="letterDescription">center post relatively
											straight, not angling to the left much</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>w&#257;w</i></td>
								<td>
									<ul>
										<li class="letterDescription">more sharp than round on
											right side unclosed loop</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#7717;&#275;t</i></td>
								<td>
									<ul>
										<li class="letterDescription">often about the same height
											as <i>yod</i>, but sometimes higher
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>yod</i></td>
								<td>
									<ul>
										<li class="letterDescription">final, unconnected form
											with left extender (esp. at line end), or of the angled type
											final, connected form of the angled type</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>k&#257;p</i></td>
								<td>
									<ul>
										<li class="letterDescription">somewhat round on top, but
											without a high point: i.e. relatively straight on top final
											form with relatively short tail</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>l&#257;mad</i></td>
								<td>
									<ul>
										<li class="letterDescription">notably thicker at the top</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>mim</i></td>
								<td>
									<ul>
										<li class="letterDescription">loop open more sharp than
											round on the right</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>semkat</i></td>
								<td>
									<ul>
										<li class="letterDescription">somewhat pointed loops
											(esp. left), left one taller does not join following letter</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#x02BF;&#275;</i></td>
								<td>
									<ul>
										<li class="letterDescription">may have relatively narrow
											angle between top and lower part</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>qop</i></td>
								<td>
									<ul>
										<li class="letterDescription">relatively angular on all
											sides final form with small tail on left</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>&#353;in</i></td>
								<td>
									<ul>
										<li class="letterDescription">very thick horizontal base
											round bowl shape on top</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td><i>t&#257;w</i></td>
								<td>
									<ul>
										<li class="letterDescription">loop open</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>

				</span>
			</div>
		</div>
		<p>&nbsp;</p>

		<div class="row">
			<div class="col-lg-12">
		<table class="table  syriacLetterforms">
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
							<li class="letterDescription">top part may have upward turn</li>
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
							<li class="letterDescription">angled, more usual Estrangela
								form</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>h&#275;</i></td>
					<td>
						<ul>
							<li class="letterDescription">center post relatively
								straight, not angling to the left much</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>w&#257;w</i></td>
					<td>
						<ul>
							<li class="letterDescription">more sharp than round on right
								side unclosed loop</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>&#7717;&#275;t</i></td>
					<td>
						<ul>
							<li class="letterDescription">often about the same height as
								<i>yod</i>, but sometimes higher
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>yod</i></td>
					<td>
						<ul>
							<li class="letterDescription">final, unconnected form with
								left extender (esp. at line end), or of the angled type final,
								connected form of the angled type</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>k&#257;p</i></td>
					<td>
						<ul>
							<li class="letterDescription">somewhat round on top, but
								without a high point: i.e. relatively straight on top final form
								with relatively short tail</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>l&#257;mad</i></td>
					<td>
						<ul>
							<li class="letterDescription">notably thicker at the top</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>mim</i></td>
					<td>
						<ul>
							<li class="letterDescription">loop open more sharp than
								round on the right</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>semkat</i></td>
					<td>
						<ul>
							<li class="letterDescription">somewhat pointed loops (esp.
								left), left one taller does not join following letter</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>&#x02BF;&#275;</i></td>
					<td>
						<ul>
							<li class="letterDescription">may have relatively narrow
								angle between top and lower part</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>qop</i></td>
					<td>
						<ul>
							<li class="letterDescription">relatively angular on all
								sides final form with small tail on left</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>&#353;in</i></td>
					<td>
						<ul>
							<li class="letterDescription">very thick horizontal base
								round bowl shape on top</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><i>t&#257;w</i></td>
					<td>
						<ul>
							<li class="letterDescription">loop open</li>
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