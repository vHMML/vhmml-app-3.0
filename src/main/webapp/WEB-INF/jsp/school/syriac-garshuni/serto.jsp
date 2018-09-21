<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName"
		value="Syriac Paleography: Garshuni" />
	<tiles:putAttribute name="sectionName"
		value="Section 2: Serto Examples of Garshuni" />
	<tiles:putAttribute name="previousSection" value="intro" />
	<tiles:putAttribute name="nextSection" value="east-syriac" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p class="imageTitle">
					Bzommar, BzSr 1 (dated 1289/90)<br />Daniel b.
					al-&#7722;a&#7789;&#7789;&#257;b, <i>The Verification of our
						Confession</i>
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
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/bzsr1_81/GeneratedImages/dzc_output.xml"
					});
				</script>
				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/bzsr1_81/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from Bzommar from 13th century, with most of the text in brownish ink with a couple of lines in red and with some diacritics in red">
				</noscript>
				<small><em>Bzommar, BzSr 1, ff. 80v-81r.</em></small>


				<p>This manuscript above has texts in both Syriac and Garshuni.</p>


				<p>&nbsp;</p>
			</div>
		</div>
		<div class="row">

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Jerusalem, SMMJ 10 (dated 1474/5)<br /> Psalms
				</p>
				<div id="openseadragon1"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({

						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj10_25_21r22v/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj10_25_21r22v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="Syriac manuscript page from 15th-century, most of the text in black but with some words in red">
				</noscript>
				<small><em>Jerusalem, SMMJ 10, ff. 24v-25r.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Jerusalem, SMMJ 43 (dated 1552)<br /> Pentateuch with Commentary
				</p>
				<div id="openseadragon2"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon2",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj43_19/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj43_19/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="two column manuscript page from mid-16th-century, most of the text in black ink with some red dots ">
				</noscript>

				<small><em>Jerusalem, SMMJ 43, ff. 18v-19r.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle"><%--Gregory bar 'Ebroyo, --%>
					Aleppo, SOAA 148 (16th C.)<br />Bar Hebraeus, <i>Poem on
						Perfection</i>
				</p>
				<div id="openseadragon3"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon3",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/soaa148s11r10v/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/soaa148s11r10v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="two column Syriac manuscript  from 16th-century">
				</noscript>
				<small><em>Aleppo, SOAA 148(s), ff. 10v-11r.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CFMM 306 (16th/17th C.)<br />
					<i>The Story of Shapur, King of Persia</i>
				</p>
				<div id="openseadragon4"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon4",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm306_20r19v/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm306_20r19v/GeneratedImages/dzc_output_files/8/0_0.jpg"
						alt="single column, two Syriac manuscript pages from 16th or 17th century ">
				</noscript>

				<small><em>Mardin, CFMM 306, pp. 26-27.</em></small>
			</div>
			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CFMM 256 (dated 1665)<br />
					  <i>On Jacob of Serugh</i> and
					 <i>The Letter that Fell from Heaven</i>
				</p>
				<div id="openseadragon5"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon5",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.7",
						minZoomLevel : "0.5",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm256_5r/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>JavaScript needs to be enabled in order to
					utilize the zoom viewer. A static image of the manuscript may be
					seen:
					<img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm256_5r/GeneratedImages/dzc_output_files/8/0_0.jpg"
					alt="mid-17th century Syriac manuscript page in two columns with several lines of text in red ink"></noscript>

				<small><em>Mardin, CFMM 256, f. 6r/p. 8.</em></small>

			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CFMM 287 (dated 1717/8)<br />
					<i>The Story of the Apostle Andrew</i>
				</p>
				<div id="openseadragon6"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon6",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "7",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm287_8r7v/GeneratedImages/dzc_output.xml"

					});
				</script>

				<noscript>JavaScript needs to be enabled in order to
					utilize the zoom viewer. A static image of the manuscript may be
					seen:
					<img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm287_8r7v/GeneratedImages/dzc_output_files/8/0_0.jpg"
					alt="18th century Syriac single manuscript page with mostly black text with one line of red"></noscript>

				<small><em>Mardin, CFMM 287, pp. 13-14.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Homs, SOAH 3 (dated 1720)<br />Basilios &#352;em&#x02bf;on
					al-&#7788;&#363;r&#257;n&#299;, <i>The Weapon of Religion and
						the Shield of Certainty</i>
				</p>
				<div id="openseadragon7"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon7",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "0.7",
						minZoomLevel : "0.5",
						maxZoomLevel : "6",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/soah3_5r/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>JavaScript needs to be enabled in order to
					utilize the zoom viewer. A static image of the manuscript may be
					seen:
					<img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/soah3_5r/GeneratedImages/dzc_output_files/9/0_0.jpg"
					alt=" manuscript page with "></noscript>

				<small><em>Homs, SOAH 3, f. 5r.</em></small>
			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Mardin, CFMM 391 (dated 1722)<br />Basilios &#352;em&#x02bf;on
					al-&#7788;&#363;r&#257;n&#299;, <i>The Weapon of Religion and
						the Shield of Certainty</i>
				</p>
				<div id="openseadragon8"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon8",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "1",
						minZoomLevel : "0.8",
						maxZoomLevel : "8",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm391_14r13v/GeneratedImages/dzc_output.xml"

					});
				</script>

				<noscript>JavaScript needs to be enabled in order to
					utilize the zoom viewer. A static image of the manuscript may be
					seen:
					<img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/cfmm391_14r13v/GeneratedImages/dzc_output_files/8/0_0.jpg"
					alt="Syriac manuscript page with several lines in red, but the rest of the ink in brownish black ink"></noscript>

				<small><em>Mardin, CFMM 391, pp. 25-26.</em></small>

			</div>

			<div class="col-sm-10 col-md-6 col-lg-6 lesson-image">
				<p class="imageTitle">
					Jerusalem, SMMJ 46 (dated 1852)<br />Daniel of &#7778;ala&#7717;, <i>Commentary
						on the Psalms</i>
				</p>
				<div id="openseadragon9"
					style="width: 450px; height: 400px; background-color: #666; border-radius: 1%;"></div>

				<script type="text/javascript">
					var viewer = OpenSeadragon({

						id : "openseadragon9",

						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",

						defaultZoomLevel : "1",

						minZoomLevel : "0.8",

						maxZoomLevel : "7",

						zoomPerClick: "1.4", showRotationControl : "true",

						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/smmj46_11/GeneratedImages/dzc_output.xml"

					});
				</script>

				<noscript>JavaScript needs to be enabled in order to
					utilize the zoom viewer. A static image of the manuscript may be
					seen:
					<img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/smmj46_11/GeneratedImages/dzc_output_files/8/0_0.jpg"
					alt="mid-19-century Syriac manuscript page with single columns per page "></noscript>

				<small><em>Jerusalem, SMMJ 46, pp. 11-12.</em></small>&nbsp;

				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>