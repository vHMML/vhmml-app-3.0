<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	#reference-header-container {
		background-color: ${ referenceHeaderBlock.uiBlockComponents['BACKGROUNDCOLOR'].value };
		
		<c:if test="${ referenceHeaderBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ referenceHeaderBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
	}
	
	<c:if test="${ not empty referenceHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	#reference-header-overlay {
		background-color: ${ referenceHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ referenceHeaderBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	#reference-header-heading {
		color: ${ referenceHeaderBlock.uiBlockComponents['HEADINGCOLOR'].value };
	}
	
	#reference-header-content {
		color: ${ referenceHeaderBlock.uiBlockComponents['CONTENTCOLOR'].value };
	}
</style>