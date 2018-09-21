package org.vhmml.entity.readingroom;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.vhmml.entity.NamedIdentifiable;

@Entity
@Table(name = "reading_room_formats")
public class Format extends NamedIdentifiable {
	
	public static final String NAME_DIGITAL = "Digital";
	public static final String NAME_MICROFORM = "Microform";
	public static final String NAME_SCANNED_MICROFORM = "Scanned Microform";
	
	public Format() {
		super();
	}
	
	public Format(String name) {
		setName(name);
	}
	
	public Format(Long id) {
		this.id = id;
	}
	
	public Format(Long id, String name) {
		this(name);
		this.id = id;
	}
}
