package org.vhmml.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "sitemap_custom_urls")
public class SitemapUrl {
	
	@Transient
	private String batchType;
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String url;
	private Double priority;
	private String frequency;
	
	public SitemapUrl() {};
	
	public SitemapUrl(String batchType, Long id, String url, Double priority, String frequency) {
		this.batchType = batchType;
		this.id = id;
		this.url = url;
		this.priority = priority;
		this.frequency = frequency;
	}
	
	public SitemapUrl(String batchType, Long id, String url) {
		this.batchType = batchType;
		this.id = id;
		this.url = url;
	}
	
	public SitemapUrl(String batchType, String url, Double priority, String frequency) {
		this.batchType = batchType;
		this.url = url;
		this.priority = priority;
		this.frequency = frequency;
	}
	
	public SitemapUrl(String batchType, String url) {
		this.batchType = batchType;
		this.url = url;
	}

	public String getBatchType() {
		return batchType;
	}

	public void setBatchType(String batchType) {
		this.batchType = batchType;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Double getPriority() {
		return priority;
	}

	public void setPriority(Double priority) {
		this.priority = priority;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}
	
	
}
