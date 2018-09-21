<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Latin Paleography" />
	<tiles:putAttribute name="sectionName"
		value="Section 5:  Writing Supports and The Form of the Book: Papyrus and the Roll" />
	<tiles:putAttribute name="sectionDescription" value="" />
	<tiles:putAttribute name="previousSection" value="exercises-1" />
	<tiles:putAttribute name="nextSection" value="parchment-codex" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-11">

				
				<p>
					A <b>writing support</b> is the surface on which the scribe writes.
				</p>
				<p>
					<b>Papyrus:</b> In the ancient Mediterranean world, and in the
					wider Roman empire, the normal writing support was papyrus, which
					is made from the papyrus plant, a wetland plant with long, fibrous
					stems. (Think of the fibers in celery.)
				</p>
				<p>To make papyrus into sheets one can write on, the pith of the
					long papyrus stem is soaked to soften it and sliced into long
					strips. A group of strips is laid side by side on a flat surface,
					then a second set of strips is laid on top of them, perpendicular
					to the first. The two layers are mashed together, which yields a
					strong sheet that is less likely to warp or tear than a single layer would.</p>
				<p>You can see the fibrous texture of the resulting writing
					surface in this papyrus document from 2nd-century CE Syria:</p>
				<div id="openseadragon1"
					style="width: 900px; height: 700px; background-color: #666; border-radius: 1%;"></div>
				<script type="text/javascript">
					var viewer = OpenSeadragon({
						id : "openseadragon1",
						prefixUrl : "${pageContext.request.contextPath}/static/js/openseadragon/images/",
						defaultZoomLevel : "2", // normally defaults to 0
						minZoomLevel : "0.6",
						maxZoomLevel : "5",
						zoomPerClick: "1.4", showRotationControl : "true",
						tileSources : "${pageContext.request.contextPath}/static/js/openseadragon/images/blpapyri229/GeneratedImages/dzc_output.xml"
					});
				</script>

				<noscript>
					JavaScript needs to be enabled in order to utilize the zoom viewer.
					A static image of the manuscript may be seen: <img
						src="${pageContext.request.contextPath}/static/js/openseadragon/images/blpapyri229/GeneratedImages/dzc_output_files/9/0_0.jpg"
						alt="Papyrus manuscript page from The British Library Board">
				</noscript>
				<small><em>&copy; The British Library Board, Papyrus
						229.</em></small>
				
				<hr />
				<p>
					<b>Roll</b> or <b>volumen:</b> Individual pieces of papyrus could
					be used for short documents, but for longer texts, numerous papyrus
					sheets would be joined into a long, horizontal writing surface that
					could be rolled from the ends. (Think of the side-to-side rolling
					of a Torah scroll, not the top-to-bottom rolling of the scrolls
					used by medieval heralds in movies.)
				<p>The papyrus would be rolled so that the side with the fibers
					running horizontally was on the inside. This was the surface that
					would be written on, and the scribe could use the fibers to guide
					the writing.</p>
				<p>
					A papyrus <b>roll</b> is called a <b>volumen</b> in Latin (plural:
					<i>volumina</i>). This is where we get our word <i>volume</i>. A whole book
					would fill up many <i>volumina</i> &#8212; many volumes.
				</p>


			</div>
		</div>
		<p></p>
	</tiles:putAttribute>
</tiles:insertTemplate>
