<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="East Syriac" />
	<tiles:putAttribute name="sectionName" value="Section 1: Overview" />
	<tiles:putAttribute name="nextSection" value="dca-144" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>East Syriac script aligns more closely with Estrangela than Serto, but of course the dividing lines are not quite as delimiting as might first seem. The characteristics that distinguish East Syriac from Estrangela (or Serto) are more pronounced in printed works than in manuscripts, but what about the latter? Letters that have especially typical East Syriac forms include:</p>
 <ul>
 <li><i>&#257;lap</i>: this letter shows some variety: it may be similar to the Estrangela type, but generally with a shorter lower part; it consists on the left of a line coming only slightly up from the baseline, joins the long angled part and ends with a slight backturn at the bottom hanging below the line; alternatively, it is often merely a curved, roughly vertical line, with a large serif at the top and sometimes angling back to the right at the top</li>
 <li><i>g&#257;mal</i>: shape may be similar to that of Estrangela, but often simply an angled stroke hanging well below the line; when joined to previous letter, the baseline often (not always) bisects the <i>g&#257;mal</i>, unlike in Estrangela</li>
 <li><i>d&#257;lat / r&#275;&#353;</i>: round on top and with a horizontal bar sitting on the line</li>
 <li><i>h&#275;</i>: the vertical on the right joins the loop from the top of that line, not lower down (as is typical in Serto)</li>
 <li><i>zayn</i>: a vertical line thicker at the top that reaches only slightly below the line, if at all</li>
 <li>final <i>k&#257;p</i>: may have an extended (compared with Estrangela) top part on the left; another type goes from the top right and down seemingly without lifting the pen</li>
 <li><i>mim</i>: is generally round, as in Serto, not the angled type more common in Estrangela manuscripts, except often in final form, where it is boxy</li>
 <li><i>semkat</i>: like a left-leaning &#952; (i.e. the left side sits notably higher than the right), also seen in some Estrangela manuscripts</li>
 <li><i>t&#257;w</i>: a tall triangular shape, partly open or barely closed at the bottom right, but with a curved bottom line reaching back to the right from the left leg of the triangle (in some manuscripts, however, it is similar to an Estrangela form with a completely closed loop, or rather a mere line, at the bottom left)</li>
 </ul>
 <p>In addition, there is a special <i>t&#257;w-&#257;lap</i> ligature (especially common, of course, at the end of feminine emphatic, singular and plural, forms) that is a particular East Syriac phenomenon. It is a short <b>v</b> shape that hangs below the line and then joins a straight <i>&#257;lap</i> on the left. This ligature is, however, not always used. Here is an example from CCM 65, f. 50v (<i>da-tl&#257;t&#257;</i>):</p>
 </div>
 </div>
 <div class="row">
  <div class="col-lg-12 lesson-image">
<%--<div id="openseadragon1" style="width: 600px; height: 300px; background-color:#666;border-radius: 1%;"></div>
    <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "${pageContext.request.contextPath}/static/js/openseadragon/images/",
		defaultZoomLevel: "1", 
		minZoomLevel : "0.8",
       maxZoomLevel : "8",
		zoomPerClick: "1.4", showRotationControl : "true",
		tileSources: "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm65_50v_alaptawligature/GeneratedImages/dzc_output.xml"
    });
</script>
    <noscript>
    JavaScript needs to be enabled in order to utilize the zoom viewer. A static image of the manuscript may be seen: <img src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm65_50v_alaptawligature/GeneratedImages/dzc_output_files/8/0_0.jpg" alt="Syriac manuscript page from CCM 65v">
    </noscript>
     --%>
     <img src="${pageContext.request.contextPath}/static/img/school/syriac-east/ccm65_50vbl14.jpg" width="450" alt="Syriac manuscript page from CCM 65v">
    <br /><small><em>from Mardin, Chaldean Cathedral, CCM 65, f. 50vb, l. 14. All rights reserved. Image provided by HMML.</em></small> </div>
 
  </div>

<div class="row">
  <div class="col-lg-12">
 
  <p>But, as we have already emphasized, forms that may well especially typify East Syriac are not precluded from appearing in otherwise predominantly Estrangela manuscripts, just as forms that may be called typically Serto appear in Estrangela manuscripts.</p>
  <p>Here follow several examples from the tenth century onward, with some notable characteristics of each indicated.</p>
  
				<p> &nbsp;</p>	
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>