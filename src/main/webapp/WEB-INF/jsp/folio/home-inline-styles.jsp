<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	#folio-header-container.${folioHeaderBlock.styleName} {
		<c:if test="${ folioHeaderBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ folioHeaderBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
		background-color: ${folioHeaderBlock.uiBlockComponents['BACKGROUNDCOLOR'].value};
	}
	
	<c:if test="${ not empty folioHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	#folio-header-overlay {
		background-color: ${ folioHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ folioHeaderBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	#folio-header-heading {
		color: ${ folioHeaderBlock.uiBlockComponents['HEADINGCOLOR'].value };
	}
	
	#folio-header-content {
		color: ${ folioHeaderBlock.uiBlockComponents['CONTENTCOLOR'].value };
	}
	
	<%-- FOLIO BLOCK ONE --%>
	#${folioBlockOne.styleName}.block-container {
		<c:if test="${ not empty folioBlockOne.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ folioBlockOne.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${folioBlockOne.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${folioBlockOne.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${folioBlockOne.uiBlockComponents['HEADING'].styleName} {
		color: ${folioBlockOne.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${folioBlockOne.uiBlockComponents['CONTENT'].styleName} {
		color: ${folioBlockOne.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${folioBlockOne.styleName} .block-overlay {
		background-color: ${folioBlockOne.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${folioBlockOne.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${folioBlockOne.styleName}.block-container:hover .block-overlay {
		background-color: ${folioBlockOne.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- FOLIO BLOCK TWO --%>
	#${folioBlockTwo.styleName}.block-container {
		<c:if test="${ not empty folioBlockTwo.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ folioBlockTwo.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${folioBlockTwo.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${folioBlockTwo.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${folioBlockTwo.uiBlockComponents['HEADING'].styleName} {
		color: ${folioBlockTwo.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${folioBlockTwo.uiBlockComponents['CONTENT'].styleName} {
		color: ${folioBlockTwo.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${folioBlockTwo.styleName} .block-overlay {
		background-color: ${folioBlockTwo.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${folioBlockTwo.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${folioBlockTwo.styleName}.block-container:hover .block-overlay {
		background-color: ${folioBlockTwo.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- FOLIO BLOCK THREE --%>
	#${folioBlockThree.styleName}.block-container {
		<c:if test="${ not empty folioBlockThree.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ folioBlockThree.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${folioBlockThree.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${folioBlockThree.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${folioBlockThree.uiBlockComponents['HEADING'].styleName} {
		color: ${folioBlockThree.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${folioBlockThree.uiBlockComponents['CONTENT'].styleName} {
		color: ${folioBlockThree.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${folioBlockThree.styleName} .block-overlay {
		background-color: ${folioBlockThree.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${folioBlockThree.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${folioBlockThree.styleName}.block-container:hover .block-overlay {
		background-color: ${folioBlockThree.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- FOLIO BLOCK FOUR --%>
	#${folioBlockFour.styleName}.block-container {
		<c:if test="${ not empty folioBlockFour.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ folioBlockFour.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${folioBlockFour.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${folioBlockFour.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${folioBlockFour.uiBlockComponents['HEADING'].styleName} {
		color: ${folioBlockFour.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${folioBlockFour.uiBlockComponents['CONTENT'].styleName} {
		color: ${folioBlockFour.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${folioBlockFour.styleName} .block-overlay {
		background-color: ${folioBlockFour.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${folioBlockFour.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${folioBlockFour.styleName}.block-container:hover .block-overlay {
		background-color: ${folioBlockFour.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
	<%-- FOLIO BLOCK FIVE --%>
	#${folioBlockFive.styleName}.block-container {
		<c:if test="${ not empty folioBlockFive.uiBlockComponents['BACKGROUNDCOLOR'] }">
			background-color: ${ folioBlockFive.uiBlockComponents['BACKGROUNDCOLOR'].value };
		</c:if>
		<c:if test="${folioBlockFive.uiBlockComponents['IMAGE'].enabled}">
			background-image: url("${pageContext.request.contextPath}/images/block/${folioBlockFive.uiBlockComponents['IMAGE'].value}");
		</c:if>
	}
	
	.${folioBlockFive.uiBlockComponents['HEADING'].styleName} {
		color: ${folioBlockFive.uiBlockComponents['HEADINGCOLOR'].value};
	}
	
	.${folioBlockFive.uiBlockComponents['CONTENT'].styleName} {
		color: ${folioBlockFive.uiBlockComponents['CONTENTCOLOR'].value};
	}
	
	#${folioBlockFive.styleName} .block-overlay {
		background-color: ${folioBlockFive.uiBlockComponents['OVERLAYCOLOR'].value};
		opacity: ${folioBlockFive.uiBlockComponents['OVERLAYOPACITY'].value};
	}
	
	#${folioBlockFive.styleName}.block-container:hover .block-overlay {
		background-color: ${folioBlockFive.uiBlockComponents['HOVERCOLOR'].value};
		opacity: 1;
	}
	
</style>