package org.vhmml.dto;

import java.io.Serializable;

public class DataPortalListingSchemaDTO implements Serializable {

	private static final long serialVersionUID = -6334134013254491591L;
	
	private Long id;
	private String country;
	private String city;
	private String repository;
	private String shelfmark;
	private String hmmlProjectNumber;
	private String permalink;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRepository() {
		return repository;
	}
	public void setRepository(String repository) {
		this.repository = repository;
	}
	public String getShelfmark() {
		return shelfmark;
	}
	public void setShelfmark(String shelfmark) {
		this.shelfmark = shelfmark;
	}
	public String getHmmlProjectNumber() {
		return hmmlProjectNumber;
	}
	public void setHmmlProjectNumber(String hmmlProjectNumber) {
		this.hmmlProjectNumber = hmmlProjectNumber;
	}
	public String getPermalink() {
		return permalink;
	}
	public void setPermalink(String permalink) {
		this.permalink = permalink;
	}
	
	
}
