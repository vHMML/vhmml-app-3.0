<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	#lexicon-header-container {
		background-color: ${ lexiconHeaderBlock.uiBlockComponents['BACKGROUNDCOLOR'].value };
		
		<c:if test="${ lexiconHeaderBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ lexiconHeaderBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
	}
	
	<c:if test="${ not empty lexiconHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	#lexicon-header-overlay {
		background-color: ${ lexiconHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ lexiconHeaderBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	#lexicon-header-heading {
		color: ${ lexiconHeaderBlock.uiBlockComponents['HEADINGCOLOR'].value };
	}
	
	#lexicon-header-content {
		color: ${ lexiconHeaderBlock.uiBlockComponents['CONTENTCOLOR'].value };
	}
</style>