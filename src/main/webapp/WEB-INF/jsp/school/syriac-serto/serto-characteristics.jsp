<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Serto" />
	<tiles:putAttribute name="sectionName" value="Section 1: Overview" />
	<tiles:putAttribute name="nextSection" value="cfmm-310" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>As noted in the Estrangela lessons, for some letters there is
					little or no distinction between Estrangela and Serto, even in
					early Estrangela manuscripts. Some of the early Serto manuscripts
					here exhibit some mixtures of Estrangela and Serto forms. By the
					thirteenth century, however, we reach a relatively stable ensemble
					of standard Serto shapes.</p>
				<h4 class="lessonSubheading">Basic Characteristics</h4>

				<p>
					The letters <i>b&#275;t</i>, <i>g&#257;mal</i>, <i>&#7789;&#275;t</i>
					(rounded at the bottom, but still angled at the top), <i>mim</i>,
					and <i>qop</i> are round in typical Serto, where their Estrangela
					(and, except for <i>mim</i>, East Syriac) counterparts are angular.

				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<table class="table syriacLetterforms">
					<caption>In addition, the following typical Serto
						letterforms may be singled out:</caption>
					<tbody>
						<tr>
							<td><i>&#257;lap</i></td>
							<td><ul>
									<li class="letterDescription">essentially a vertical line,
										but at word-end the top often tends to the right, except when
										following <i>l&#257;mad</i>, when it is either straight or
										angling in the opposite direction
									</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>g&#257;mal</i></td>
							<td><ul>
									<li class="letterDescription">round at the bottom, not
										pointed as in Estrangela; often hangs very low</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>d&#257;lat / r&#275;&#353;</i></td>
							<td><ul>
									<li class="letterDescription">a curved, comma-like shape
										that may or may not hang a little below the baseline</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>h&#275;</i></td>
							<td><ul>
									<li class="letterDescription">a vertical on the right may
										join the loop from the top of that line (as in East Syriac),
										or lower down</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>w&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">a circle</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>l&#257;mad</i></td>
							<td><ul>
									<li class="letterDescription">final form with two parallel
										left-sloping lines</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>&#353;in</i></td>
							<td><ul>
									<li class="letterDescription">a closed loop sitting low on
										the line</li>
								</ul></td>
						</tr>
						<tr>
							<td><i>t&#257;w</i></td>
							<td><ul>
									<li class="letterDescription">when joined to previous
										letter, a triangular shape with a curved line at the bottom,
										the triangle not closed; when not joined to previous letter,
										it is a similar shape, but without the right leg of that
										triangle</li>
								</ul></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>