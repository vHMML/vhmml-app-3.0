<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Syriac: Melkite" />
	<tiles:putAttribute name="sectionName"
		value="Section 1: Overview" />
	<tiles:putAttribute name="nextSection" value="ccm-147" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					(Some parts of this lesson appeared previously in a post at <a
						href="https://hmmlorientalia.wordpress.com/2013/05/10/examples-of-melkite-syriac-script/"
						target="_blank">hmmlorientalia</a>.)
				</p>
				<p>The so-called Melkite script is found much less often than
					Estrangela, Serto, or East Syriac, but enough manuscripts survive
					to reveal its distinctiveness from the three other better known
					types of writing.</p>
				<p>
					The term &#8220;Melkite&#8221; &#40;&#60; Syriac <i>malk&#257;</i>&#41;
					refers to adherents of the Council of Chalcedon particularly in
					areas where there where also adherents of miaphysite belief.
					Melkite, or Rum Orthodox, Christians are partly an heir to Syriac
					culture, and Syriac was used liturgically into the eighteenth
					century in some places. &#40;In Palestine and Transjordan from the
					5th-14th centuries, Chalcedonian Christians used an Aramaic dialect
					altogether distinct from Syriac, Christian Palestinian Aramaic
					&#91;CPA&#93;, the script of which has some similarities to
					Estrangela.&#41; From the ninth century especially, the literature
					is in Arabic, but in Syriac there are some theological and
					polemical texts, not to mention a number of translations from
					Greek, as well as a few monastic texts known from Melkite
					manuscripts but originating in Syriac Orthodox or Church of the
					East communities. &#40;For Syriac, see further Brock in GEDSH,
					285-286, and &#8220;Melkite&#8221; and &#8220;Melkites&#8221; in
					the <a href="http://www.csc.org.il/db/db.aspx?db=SB"
						target="_blank">Comprehensive Bibliography of Syriac
						Christianity</a> at the Hebrew University of Jerusalem; for Arabic,
					see G. Graf, GCAL I 623-640, II 3-93, and III 23-41, 79-298, and J.
					Nasrallah, <i>Histoire du mouvement litt&#233;raire dans
						l&#8217;&#201;glise Melchite du V&#7497; au XX&#7497; si&#232;cle</i>,
					4 vols.&#41;
				</p>
				<p>
					According to Hatch &#40;<i>An Album of Dated Syriac Manuscripts</i>,
					28-29&#41;, the Melkite Syriac script developed from Serto, but he
					generally points out similarities with Estrangela and East Syriac,
					too, echoing Wright, who says that it &#8220;inclines in many
					points towards the Nestorian&#8221; &#40;<i>Cat. Syr. Brit.
						Mus.</i>, pt. III, p. xxxi&#41;. Plates xv-xvii of Wright&#8217;s
					catalog provide some examples. Hatch knew of only fourteen
					manuscripts, including those in Wright&#8217;s catalog, in Melkite
					script clearly dated before the end of the sixteenth century, the
					cutoff point for his <i>Album</i>. The oldest of these manuscripts
					is one finished at the Lavra of Mar Elias on the Black Mountain and
					dating from 1045 CE. Hatch offers examples in his plates
					clxxxiv-cxcvii. The examples below from various collections add to
					those already known from Wright and Hatch.
				</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>