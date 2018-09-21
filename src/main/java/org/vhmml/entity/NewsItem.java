package org.vhmml.entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "news_items")
public class NewsItem implements Serializable {

	private static final long serialVersionUID = -5663628715691978297L;
	
	public enum Part {
		TITLE("TITLE", "Title"),
		CONTENT("CONTENT", "Content"),
		TOOLTIP("TOOLTIP", "Tooltip"),
		DATE("DATE", "Date"),
		IMAGE("IMAGE", "Image"),
		IMAGELINK("IMAGELINK", "Image Link");
		
		private String name;
		private String displayName;
		
		Part(String name, String displayName) {
			this.name = name;
			this.displayName = displayName;
		}
		
		public String getName() {
			return name;
		}
		
		public String getDisplayName() {
			return displayName;
		}
		
		public static Part forName(String name) {
			// Default to the title part.
        	Part part = TITLE;
        	
        	for(Part nextPart : Part.values()) {
        		if(name != null && nextPart.getName().equalsIgnoreCase(name)) {
        			part = nextPart;
        			break;
        		}
        	}        	
        	
        	return part;
        }
	}
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String title;
	private String content;
	private String tooltip;
	private Date date;
	private String image;
	
	@Column(name = "image_link")
	private String imageLink;
	
	@Transient
	private String formattedDate;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTooltip() {
		return tooltip;
	}
	public void setTooltip(String tooltip) {
		this.tooltip = tooltip;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFormattedDate() {
		return formatDate();
	}
	public String getImageLink() {
		return imageLink;
	}
	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}
	private String formatDate() {
		String formattedDate = null;
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/YYYY");
		
		if (this.date != null) {
			formattedDate = formatter.format(this.date);
		}
		
		return formattedDate;
	}
}
