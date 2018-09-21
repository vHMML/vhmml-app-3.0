<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Garshuni" />
	<tiles:putAttribute name="sectionName"
		value="Section 3: East-Syriac Examples of Garshuni" />
	<tiles:putAttribute name="previousSection" value="serto" />
	<%--<tiles:putAttribute name="nextSection" value="" />--%>
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p class="imageTitle">
					Mardin, CCM 18 (dated 1609/10)<br /> Wedding Rituals
				</p>
				<div id="openseadragon10"
					style="width: 900px; height: 600px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon10",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm18_2/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm18_2/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page in East Syriac Garshuni script, slightly damaged initial page on the right but all text is legible ">
				</noscript>
				<small><em>Mardin, CCM 18, ff. 1v-2r.</em></small>

				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CCM 54 (dated 1628)<br />Gospel Lectionary
				</p>
				<div id="openseadragon1"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.7",
						minZoomLevel : "0.5",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm54_7v/GeneratedImages/dzc_output.xml"

					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm54_7v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="single page garshuni East Syriac text with yellow and white design block below text">

				</noscript>

				<small><em>Mardin, CCM 54, f. 7v.</em></small>

			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Jerusalem, SMMJ 133 (dated 1678/9)<br />
					<i>Dialogue of Abu Qurrah and Al-Ma&#702;m&#363;n</i>
				</p>
				<div id="openseadragon2"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						//defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj133_2/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>

					JavaScript needs to be enabled in order to utilize the zoom viewer.

					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj133_2/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="two pages from a single manuscript with first five lines in red ink; rest of text is black ink text with red diacritics;">

				</noscript>

				<small><em>Jerusalem, SMMJ 133, ff. 1v-2r.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CCM 8 (dated 1681)<br />
					<i>The Story of Archelides </i>
				</p>
				<div id="openseadragon3"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.5",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm8_2r/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>

					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm8_2r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="single page single column">

				</noscript>
				<small><em>Mardin, CCM 8, f. 2r.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CCM 7 (18th C.)<br />Unidentified hagiographic text
				</p>
				<div id="openseadragon4"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.5",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm7_1r/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>

					JavaScript needs to be enabled in order to utilize the zoom viewer.

					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm7_1r/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="single page, with two columns of text">

				</noscript>

				<small><em>Mardin, CCM 7, f. 1r.</em></small>
			</div>
			

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CCM 13 (dated 1719)<br /> <i>Stories from the Thousand
						and One Nights</i>
				</p>
				<div id="openseadragon6"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon6",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.8",
						minZoomLevel : "0.5",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm13_2v/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm13_2v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page, single columnwith lines 2 through 4 in red ink; numerous red diamonds with black x's in the left margin">
				</noscript>
				<small><em>Mardin, CCM 13, f. 7v.</em></small>
</div>
<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CCM 3 (18th/19th C.)<br />
					<i>The Story of Emperor Zeno, &#352;ams Al-Mun&#299;r and
						Hilaria <%--their Daughter--%></i>
				</p>
				<div id="openseadragon5"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
					    defaultZoomLevel : "0.8",
						minZoomLevel : "0.5",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/ccm3_10v/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/ccm3_10v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="single page with single column with mostly black ink with red dots; line in red ink in right margin">
				</noscript>

				<small><em>Mardin, CCM 3, f. 10v.</em></small>

			
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>