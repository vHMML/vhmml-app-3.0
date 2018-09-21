<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	#reading-room-header-container.${readingRoomHeaderBlock.styleName} {
		<c:if test="${ readingRoomHeaderBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ readingRoomHeaderBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
		background-color: ${readingRoomHeaderBlock.uiBlockComponents['BACKGROUNDCOLOR'].value};
	}
	
	<c:if test="${ not empty readingRoomHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	#reading-room-header-overlay {
		background-color: ${ readingRoomHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ readingRoomHeaderBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	#reading-room-header-heading {
		color: ${ readingRoomHeaderBlock.uiBlockComponents['HEADINGCOLOR'].value };
	}
	
	#reading-room-header-content {
		color: ${ readingRoomHeaderBlock.uiBlockComponents['CONTENTCOLOR'].value };
	}
	
	<%-- READING ROOM BLOCK ONE --%>
	#${readingRoomBlockOne.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockOne.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockOne.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockOne.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockOne.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockOne.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockOne.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockOne.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockOne.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockOne.styleName} .block-overlay {
		background-color: ${readingRoomBlockOne.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockOne.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockOne.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockOne.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK TWO --%>
	#${readingRoomBlockTwo.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockTwo.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockTwo.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockTwo.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockTwo.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockTwo.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockTwo.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockTwo.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockTwo.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockTwo.styleName} .block-overlay {
		background-color: ${readingRoomBlockTwo.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockTwo.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockTwo.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockTwo.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK THREE --%>
	#${readingRoomBlockThree.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockThree.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockThree.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockThree.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockThree.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockThree.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockThree.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockThree.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockThree.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockThree.styleName} .block-overlay {
		background-color: ${readingRoomBlockThree.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockThree.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockThree.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockThree.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK FOUR --%>
	#${readingRoomBlockFour.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockFour.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockFour.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockFour.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockFour.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockFour.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockFour.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockFour.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockFour.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockFour.styleName} .block-overlay {
		background-color: ${readingRoomBlockFour.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockFour.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockFour.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockFour.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK FIVE --%>
	#${readingRoomBlockFive.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockFive.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockFive.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockFive.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockFive.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockFive.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockFive.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockFive.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockFive.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockFive.styleName} .block-overlay {
		background-color: ${readingRoomBlockFive.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockFive.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockFive.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockFive.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK SIX --%>
	#${readingRoomBlockSix.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockSix.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockSix.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockSix.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockSix.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockSix.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockSix.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockSix.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockSix.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockSix.styleName} .block-overlay {
		background-color: ${readingRoomBlockSix.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockSix.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockSix.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockSix.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK SEVEN --%>
	#${readingRoomBlockSeven.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockSeven.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockSeven.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockSeven.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockSeven.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockSeven.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockSeven.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockSeven.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockSeven.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockSeven.styleName} .block-overlay {
		background-color: ${readingRoomBlockSeven.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockSeven.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockSeven.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockSeven.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- READING ROOM BLOCK EIGHT --%>
	#${readingRoomBlockEight.styleName}.block-container {
		<c:if test="${ not empty readingRoomBlockEight.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ readingRoomBlockEight.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${readingRoomBlockEight.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${readingRoomBlockEight.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${readingRoomBlockEight.uiBlockComponents['HEADING'].styleName} {
		color: ${readingRoomBlockEight.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${readingRoomBlockEight.uiBlockComponents['CONTENT'].styleName} {
		color: ${readingRoomBlockEight.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${readingRoomBlockEight.styleName} .block-overlay {
		background-color: ${readingRoomBlockEight.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${readingRoomBlockEight.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${readingRoomBlockEight.styleName}.block-container:hover .block-overlay {
		background-color: ${readingRoomBlockEight.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
</style>