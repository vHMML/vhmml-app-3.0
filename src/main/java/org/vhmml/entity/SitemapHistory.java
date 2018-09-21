package org.vhmml.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sitemap_history")
public class SitemapHistory implements Serializable {
	
	private static final long serialVersionUID = -3626326671303614496L;
	
	public enum SitemapStatus {
		STARTED("STARTED", "Started"),
		GENERATING("GENERATING", "Generating"),
		COMPLETED("COMPLETED", "Completed"),
		FAILED("FAILED", "Failed");
	
		private final String status;
		private final String displayStatus;
		
		SitemapStatus(String status, String displayStatus) {
			this.status = status;
			this.displayStatus = displayStatus;
		}
		
		public String getStatus() {
			return status;
		}
		
		public String getDisplayStatus() {
			return displayStatus;
		}
	}	
	
	public SitemapHistory() {};
	
	public SitemapHistory(Date lastGenerated, String lastGeneratedBy, SitemapStatus status) {
		this.lastGenerated = lastGenerated;
		this.lastGeneratedBy = lastGeneratedBy;
		this.status = status.getStatus();
	}
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name = "last_generated")
	private Date lastGenerated;
	
	@Column(name = "last_generated_by")
	private String lastGeneratedBy;
	
	private String status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getLastGenerated() {
		return lastGenerated;
	}

	public void setLastGenerated(Date lastGenerated) {
		this.lastGenerated = lastGenerated;
	}

	public String getLastGeneratedBy() {
		return lastGeneratedBy;
	}

	public void setLastGeneratedBy(String lastGeneratedBy) {
		this.lastGeneratedBy = lastGeneratedBy;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
