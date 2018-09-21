package org.vhmml.entity;

import org.vhmml.entity.readingroom.ReadingRoomObject;

public class ReadingRoomJsonLd extends JsonLd {

	private static final long serialVersionUID = 8887085317545174299L;
	
	private String support;
	private ReadingRoomObject.Type objectType;

	public ReadingRoomObject.Type getObjectType() {
		return objectType;
	}

	public void setObjectType(ReadingRoomObject.Type objectType) {
		this.objectType = objectType;
	}
	
	public String getSupport() {
		return support;
	}

	public void setSupport(String support) {
		this.support = support;
	}

}
