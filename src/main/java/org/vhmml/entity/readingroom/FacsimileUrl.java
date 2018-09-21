package org.vhmml.entity.readingroom;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reading_room_facsimile_urls")
public class FacsimileUrl {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name = "reading_room_object_id")
	private Long readingRoomObjectId;
	
	@Column
	private String url;
	
	@Column(name = "link_text")
	private String linkText;

	public FacsimileUrl() {
		super();
	}
	
	public FacsimileUrl(String url) {
		this.url = url;
	}
	
	public FacsimileUrl(Long readingRoomObjectId, String url, String linkText) {
		this(readingRoomObjectId, url);
		this.linkText = linkText;
	}
	
	public FacsimileUrl(Long readingRoomObjectId, String url) {
		this.readingRoomObjectId = readingRoomObjectId;
		this.url = url;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getReadingRoomObjectId() {
		return readingRoomObjectId;
	}

	public void setReadingRoomObjectId(Long readingRoomObjectId) {
		this.readingRoomObjectId = readingRoomObjectId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getLinkText() {
		return linkText;
	}

	public void setLinkText(String linkText) {
		this.linkText = linkText;
	}
}
