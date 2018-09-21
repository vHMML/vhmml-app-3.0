package org.vhmml.entity;

import java.io.Serializable;

public class JsonLd implements Serializable {
	private static final long serialVersionUID = 17405026079408057L;
	

	/**
	 * There are more JSON LD properties used, but the ones listed are used throughout the JSON-LD service classes for comparison operations, etc.
	 * Add additional ones as needed.
	 */
	public enum JsonLdProperty {
		ALTERNATE_NAME("ALTERNATE_NAME", "alternateName"),
		DATE_CREATED("DATE_CREATED", "dateCreated"),
		IDENTIFIER("IDENTIFIER", "identifier"),
		LOCATION_CREATED("LOCATION_CREATED", "locationCreated"),
		NAME("NAME", "name");
		
		JsonLdProperty(String name, String displayName) {
			this.name = name;
			this.displayName = displayName;
		}
		
		private String name;
		private String displayName;
		
		public String getName() {
			return name;
		}
		
		public String getDisplayName() {
			return displayName;
		}
	}
	
	private Long id;
	private boolean publicManifest;

	// Shelf mark, HMML project number, collection (archive type), series (archive type),
	// sub-series (archive type), sub-sub-series (archive type)
	private String identifierProperty;
	
	// Contains objectType, surrogate, features/features imported, script, decoration
	private String descriptionProperty;
	
	// Bibliography, external bibliography
	private String citationProperty;
	
	// Genre, genre2, etc.
	private String genreProperty;
	
	// Subjects, subjects2, etc.
	private String aboutProperty;
	
	// Lang, lang2, etc.
	private String inLanguageProperty;
	
	// Contributor, contributor2, etc.
	private String contributorProperty;
	
	// Creator, creator2, etc.
	private String creatorProperty;
	
	// Repository, holding institution
	private String providerProperty;
	
	// Title (provisional title), titleNs, uniformTitle
	private String nameProperty;
	
	// Alternative titles
	private String alternateNameProperty;
	
	// Place of origin
	private String locationCreatedProperty;
	
	// Date range (begin and end date), centures, native date
	private String dateCreatedProperty;
	
	// IIIF url, object url, etc.
	private String urlProperty;
	
	// Tags
	private String keywordsProperty;
	
	public String getKeywordsProperty() {
		return keywordsProperty;
	}

	public void setKeywordsProperty(String keywordsProperty) {
		this.keywordsProperty = keywordsProperty;
	}

	public String getUrlProperty() {
		return urlProperty;
	}

	public void setUrlProperty(String urlProperty) {
		this.urlProperty = urlProperty;
	}

	public boolean isPublicManifest() {
		return publicManifest;
	}

	public void setPublicManifest(boolean publicManifest) {
		this.publicManifest = publicManifest;
	}

	public String getIdentifierProperty() {
		return identifierProperty;
	}

	public void setIdentifierProperty(String identifierProperty) {
		this.identifierProperty = identifierProperty;
	}

	public String getLocationCreatedProperty() {
		return locationCreatedProperty;
	}

	public void setLocationCreatedProperty(String locationCreatedProperty) {
		this.locationCreatedProperty = locationCreatedProperty;
	}

	public String getAlternateNameProperty() {
		return alternateNameProperty;
	}

	public void setAlternateNameProperty(String alternateNameProperty) {
		this.alternateNameProperty = alternateNameProperty;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDateCreatedProperty() {
		return dateCreatedProperty;
	}

	public void setDateCreatedProperty(String dateCreatedProperty) {
		this.dateCreatedProperty = dateCreatedProperty;
	}

	public String getNameProperty() {
		return nameProperty;
	}

	public void setNameProperty(String nameProperty) {
		this.nameProperty = nameProperty;
	}

	public String getProviderProperty() {
		return providerProperty;
	}

	public void setProviderProperty(String providerProperty) {
		this.providerProperty = providerProperty;
	}

	public String getDescriptionProperty() {
		return descriptionProperty;
	}

	public void setDescriptionProperty(String descriptionProperty) {
		this.descriptionProperty = descriptionProperty;
	}

	public String getCitationProperty() {
		return citationProperty;
	}

	public void setCitationProperty(String citationProperty) {
		this.citationProperty = citationProperty;
	}

	public String getGenreProperty() {
		return genreProperty;
	}

	public void setGenreProperty(String genreProperty) {
		this.genreProperty = genreProperty;
	}

	public String getAboutProperty() {
		return aboutProperty;
	}

	public void setAboutProperty(String aboutProperty) {
		this.aboutProperty = aboutProperty;
	}

	public String getInLanguageProperty() {
		return inLanguageProperty;
	}

	public void setInLanguageProperty(String inLanguageProperty) {
		this.inLanguageProperty = inLanguageProperty;
	}

	public String getContributorProperty() {
		return contributorProperty;
	}

	public void setContributorProperty(String contributorProperty) {
		this.contributorProperty = contributorProperty;
	}

	public String getCreatorProperty() {
		return creatorProperty;
	}

	public void setCreatorProperty(String creatorProperty) {
		this.creatorProperty = creatorProperty;
	}

}
