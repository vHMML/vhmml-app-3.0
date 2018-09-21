package org.vhmml.entity.block;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "block_components")
public class BlockComponent {
	
	public enum Type {
		HEADING("HEADING"),
		HEADINGCOLOR("HEADINGCOLOR"),
		CONTENT("CONTENT"),
		CONTENTCOLOR("CONTENTCOLOR"),
		HOVERCOLOR("HOVERCOLOR"),
		OVERLAYCOLOR("OVERLAYCOLOR"),
		OVERLAYOPACITY("OVERLAYOPACITY"),
		BACKGROUNDCOLOR("BACKGROUNDCOLOR"),
		IMAGE("IMAGE"),
		LISTAMOUNT("LISTAMOUNT"),
		URL("URL"),
		FIELDLINKSEARCH("FIELDLINKSEARCH");
		
		private String name;
		
		Type(String name) {
			this.name = name;
		}
		
		public String getName() {
			return name;
		}
		
		public static Type forName(String name) {
			Type type = HEADING;
        	
        	for(Type nextType : Type.values()) {
        		if(name != null && nextType.getName().equalsIgnoreCase(name)) {
        			type = nextType;
        			break;
        		}
        	}        	
        	
        	return type;
        }
	}
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name = "block_id")
	private Long blockId;
	

	@Column(name = "style_name")
	private String styleName;
	
	private String type;
	private String value;
	
	@Column(name = "is_enabled")
	private boolean enabled;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getBlockId() {
		return blockId;
	}

	public void setBlockId(Long blockId) {
		this.blockId = blockId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getStyleName() {
		return styleName;
	}

	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}
	
}
