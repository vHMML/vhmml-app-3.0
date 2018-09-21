<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="application/ld+json">
{
 	"@context": "http://schema.org/",
  	"@type": ["CreativeWork"],
  	"@id": "https://${configValues['permalink.url'].value}/folio/view/${selectedObjectJsonLd.id}",

<c:if test="${not empty selectedObjectJsonLd.providerProperty}">
  "provider": ${selectedObjectJsonLd.providerProperty},
</c:if>

  	"identifier": ${selectedObjectJsonLd.identifierProperty},

<c:if test="${not empty selectedObjectJsonLd.descriptionProperty}">
    "description": ${selectedObjectJsonLd.descriptionProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.citationProperty}">  
    "citation": ${selectedObjectJsonLd.citationProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.urlProperty}">  
    "url": ${selectedObjectJsonLd.urlProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.inLanguageProperty}">
    "inLanguage": ${selectedObjectJsonLd.inLanguageProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.contributorProperty}">
    "contributor": ${selectedObjectJsonLd.contributorProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.nameProperty}">
    "name": ${selectedObjectJsonLd.nameProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.dateCreatedProperty}">
	"dateCreated": ${selectedObjectJsonLd.dateCreatedProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.locationCreatedProperty}">
	"locationCreated": ${selectedObjectJsonLd.locationCreatedProperty},
</c:if>

    "license": ["http://www.vhmml.org/terms"]
}
</script>
