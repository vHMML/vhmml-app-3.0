<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="deleteButtonCssClass" value="btn button btn-danger deleteButton"/>

<c:if test="${empty referenceEntryForm.id}">
	<c:set var="deleteButtonCssClass" value="btn button btn-danger deleteButton hide"/>
</c:if>
<button type="button" class="${deleteButtonCssClass}" data-entry-id="${referenceEntryForm.id}">Delete</button>
<button type="button" class="btn button btn-warning cancelButton">Cancel</button>
<button type="button" class="btn button btn-success saveAndCloseButton">Save and Close</button>
<button type="button" class="btn button btn-success saveButton">Save</button>