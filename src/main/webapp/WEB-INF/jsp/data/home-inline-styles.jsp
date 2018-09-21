<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	#data-portal-header-container.${dataPortalHeaderBlock.styleName} {
		<c:if test="${ dataPortalHeaderBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ dataPortalHeaderBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
		background-color: ${dataPortalHeaderBlock.uiBlockComponents['BACKGROUNDCOLOR'].value};
	}
	
	<c:if test="${ not empty dataPortalHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	#data-portal-header-overlay {
		background-color: ${ dataPortalHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ dataPortalHeaderBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	#data-portal-header-heading {
		color: ${ dataPortalHeaderBlock.uiBlockComponents['HEADINGCOLOR'].value };
	}
	
	#data-portal-header-content {
		color: ${ dataPortalHeaderBlock.uiBlockComponents['CONTENTCOLOR'].value };
	}

</style>