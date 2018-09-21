<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ tag dynamic-attributes="dynamicAtts" %>

<%@ attribute name="fieldName" required="false" rtexprvalue="true" %>
<%@ attribute name="listName" required="false" rtexprvalue="true" %>
<%@ attribute name="listIndex" required="false" rtexprvalue="true" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="fieldValue" required="false" rtexprvalue="true" %>
		
<c:set var="completeFieldName" value="${fieldName}"/>
		
<c:if test="${not empty listName && not empty listIndex}">
	<c:set var="completeFieldName" value="${listName}[${listIndex}]"/>
			
	<!-- if it's a list but they didn't pass a field name, then it's something simple like a list of strings, e.g. alternateSurrogateFormats -->
	<c:if test="${not empty fieldName}">
		<c:set var="completeFieldName" value="${completeFieldName}.${fieldName}"/>				
	</c:if>
</c:if>

<input type="hidden" name="${completeFieldName}" data-field="${fieldName}" data-list-name="${listName}" data-list-index="${listIndex}" value="${fieldValue}" class="${cssClass}"/>