<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="application/ld+json">
{
 	"@context": "http://schema.org/",
  	"@type": ["Thing"],
  	"@id": "https://${configValues['permalink.url'].value}/lexicon/definition/${selectedObjectJsonLd.id}",

<c:if test="${not empty selectedObjectJsonLd.descriptionProperty}">
    "description": ${selectedObjectJsonLd.descriptionProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.urlProperty}">  
    "url": ${selectedObjectJsonLd.urlProperty},
</c:if>


<c:if test="${not empty selectedObjectJsonLd.alternateNameProperty}">
    "alternateName": ${selectedObjectJsonLd.alternateNameProperty},
</c:if>


    "name": ${selectedObjectJsonLd.nameProperty}

}
</script>
