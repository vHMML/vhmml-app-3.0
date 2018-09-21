package org.vhmml.batch.processor;

public class BaseSitemapUrlProcessor {
	
	public BaseSitemapUrlProcessor() {
		super();
	}
	
	public BaseSitemapUrlProcessor(String type) {
		super();
		this.type = type;
	}
	
	private String type;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
