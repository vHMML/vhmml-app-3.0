package org.vhmml.entity.block;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.collections.CollectionUtils;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "blocks")
public class Block {
	
	public enum Section {
		HOMEPAGE("HOMEPAGE", "Homepage"),
		NEWS("NEWS", "News"),
		READINGROOM("READINGROOM", "Reading Room"),
		REFERENCE("REFERENCE", "Reference"),
		LEXICON("LEXICON", "Lexicon"),
		FOLIO("FOLIO", "Folio"),
		DATAPORTAL("DATAPORTAL", "Data Portal");
		
		private String name;
		private String displayName;
		
		Section(String name, String displayName) {
			this.name = name;
			this.displayName = displayName;
		}
		
		public String getName() {
			return name;
		}
		
		public String getDisplayName() {
			return displayName;
		}
		
		public static Section forName(String name) {
        	Section section = HOMEPAGE;
        	
        	for(Section nextSection : Section.values()) {
        		if(name != null && nextSection.getName().equalsIgnoreCase(name)) {
        			section = nextSection;
        			break;
        		}
        	}        	
        	
        	return section;
        }
	}
	
	@Id
	@GeneratedValue
	@Column(insertable = true)
	private Long id;
	
	@Column(name = "display_name")
	private String displayName;
	
	private String name;
	
	@Column(name = "style_name")
	private String styleName;
	
	private String section;
	
	@Column(name = "is_enabled")
	private boolean enabled;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name="block_id")
	@Fetch(FetchMode.SUBSELECT)
	private List<BlockComponent> blockComponents;
	
	// This property is used for pulling the block component by style name in the front-end.
	@Transient
	private Map<String, BlockComponent> uiBlockComponents;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public List<BlockComponent> getBlockComponents() {
		return blockComponents;
	}
	public void setBlockComponents(List<BlockComponent> blockComponents) {
		this.blockComponents = blockComponents;
	}
	public String getStyleName() {
		return styleName;
	}
	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}
	public Map<String, BlockComponent> getUiBlockComponents() {
		return generateUiBlockComponents();
	}
	public void setUiBlockComponents(Map<String, BlockComponent> uiBlockComponents) {
		this.uiBlockComponents = uiBlockComponents;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	
	/**
	 * Generate the Map version of our block components list.
	 * @return
	 */
	private Map<String, BlockComponent> generateUiBlockComponents() {
		Map<String, BlockComponent> blockComponentsMap = new HashMap<String, BlockComponent>();
		
		if (CollectionUtils.isNotEmpty(this.blockComponents)) {
			for (BlockComponent blockComponent : this.blockComponents) {
				blockComponentsMap.put(blockComponent.getType(), blockComponent);
			}
		}
		
		return blockComponentsMap;
	}
}
