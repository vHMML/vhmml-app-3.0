<script type="application/ld+json">
{
  "@context": "http://schema.org/",
  "@type": "CreativeWork",
  "@id": "${selectedObjectJsonLd.urlProperty}",

<c:if test="${not empty selectedObjectJsonLd.nameProperty}">
  "name": "${selectedObjectJsonLd.nameProperty}",
</c:if>

<c:if test="${not empty selectedObjectJsonLd.descriptionProperty}">
  "description": ${selectedObjectJsonLd.descriptionProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.creatorProperty}">
  "creator": ${selectedObjectJsonLd.creatorProperty},
</c:if>

<c:if test="${not empty selectedObjectJsonLd.keywordsProperty}">
  "keywords": ${selectedObjectJsonLd.keywordsProperty},
</c:if>

	"url": "${selectedObjectJsonLd.urlProperty}",
	"license": ["http://www.vhmml.org/terms"]
  	
}
</script>