<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.container {
		padding: 0;
		margin: 0;
		width: 100%;
		text-align: center;
	}
	
	#homepage-header.${headerBlock.styleName} {
		<c:if test="${ headerBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ headerBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
		background-color: ${headerBlock.uiBlockComponents['BACKGROUNDCOLOR'].value};
	}
	
	<c:if test="${ not empty headerBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	#homepage-header-overlay {
		background-color: ${ headerBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ headerBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	#homepage-text-bar {
		color: ${textBar.uiBlockComponents["CONTENTCOLOR"].value};
		background-color: ${textBar.uiBlockComponents['BACKGROUNDCOLOR'].value};
	}
	
	#${homepageBlockOne.styleName}.block-container {
		<c:if test="${ not empty homepageBlockOne.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ homepageBlockOne.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${homepageBlockOne.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${homepageBlockOne.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${homepageBlockOne.uiBlockComponents['HEADING'].styleName} {
		color: ${homepageBlockOne.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${homepageBlockOne.uiBlockComponents['CONTENT'].styleName} {
		color: ${homepageBlockOne.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${homepageBlockOne.styleName} .block-overlay {
		background-color: ${homepageBlockOne.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${homepageBlockOne.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${homepageBlockOne.styleName}.block-container:hover .block-overlay {
		background-color: ${homepageBlockOne.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	#${homepageBlockTwo.styleName}.block-container {
		<c:if test="${ not empty homepageBlockTwo.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ homepageBlockTwo.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${homepageBlockTwo.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${homepageBlockTwo.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${homepageBlockTwo.uiBlockComponents['HEADING'].styleName} {
		color: ${homepageBlockTwo.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${homepageBlockTwo.uiBlockComponents['CONTENT'].styleName} {
		color: ${homepageBlockTwo.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${homepageBlockTwo.styleName} .block-overlay {
		background-color: ${homepageBlockTwo.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${homepageBlockTwo.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${homepageBlockTwo.styleName}.block-container:hover .block-overlay {
		background-color: ${homepageBlockTwo.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	#${homepageBlockThree.styleName}.block-container {
		<c:if test="${ not empty homepageBlockThree.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ homepageBlockThree.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${homepageBlockThree.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${homepageBlockThree.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${homepageBlockThree.uiBlockComponents['HEADING'].styleName} {
		color: ${homepageBlockThree.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${homepageBlockThree.uiBlockComponents['CONTENT'].styleName} {
		color: ${homepageBlockThree.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${homepageBlockThree.styleName} .block-overlay {
		background-color: ${homepageBlockThree.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${homepageBlockThree.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${homepageBlockThree.styleName}.block-container:hover .block-overlay {
		background-color: ${homepageBlockThree.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	#${homepageBlockFour.styleName}.block-container {
		<c:if test="${ not empty homepageBlockFour.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ homepageBlockFour.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${homepageBlockFour.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${homepageBlockFour.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${homepageBlockFour.uiBlockComponents['HEADING'].styleName} {
		color: ${homepageBlockFour.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${homepageBlockFour.uiBlockComponents['CONTENT'].styleName} {
		color: ${homepageBlockFour.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${homepageBlockFour.styleName} .block-overlay {
		background-color: ${homepageBlockFour.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${homepageBlockFour.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${homepageBlockFour.styleName}.block-container:hover .block-overlay {
		background-color: ${homepageBlockFour.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	#${homepageBlockFive.styleName}.block-container {
		<c:if test="${ not empty homepageBlockFive.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ homepageBlockFive.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${homepageBlockFive.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${homepageBlockFive.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${homepageBlockFive.uiBlockComponents['HEADING'].styleName} {
		color: ${homepageBlockFive.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${homepageBlockFive.uiBlockComponents['CONTENT'].styleName} {
		color: ${homepageBlockFive.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${homepageBlockFive.styleName} .block-overlay {
		background-color: ${homepageBlockFive.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${homepageBlockFive.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${homepageBlockFive.styleName}.block-container:hover .block-overlay {
		background-color: ${homepageBlockFive.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	#${homepageBlockSix.styleName}.block-container {
		<c:if test="${ not empty homepageBlockSix.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ homepageBlockSix.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${homepageBlockSix.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${homepageBlockSix.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${homepageBlockSix.uiBlockComponents['HEADING'].styleName} {
		color: ${homepageBlockSix.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${homepageBlockSix.uiBlockComponents['CONTENT'].styleName} {
		color: ${homepageBlockSix.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${homepageBlockSix.styleName} .block-overlay {
		background-color: ${homepageBlockSix.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${homepageBlockSix.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${homepageBlockSix.styleName}.block-container:hover .block-overlay {
		background-color: ${homepageBlockSix.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
</style>