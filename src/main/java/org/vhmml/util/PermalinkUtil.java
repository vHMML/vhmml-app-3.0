package org.vhmml.util;

public class PermalinkUtil {
	
	public enum Type {
		READINGROOM("Reading Room", "readingRoom"),
	    FOLIO("Folio", "folio");
	    
	    private String displayName;
		private String name;
		
		Type(String displayName, String name) {
			this.displayName = displayName;
			this.name = name;
		}
		
		public String getDisplayName() {
			return this.displayName;
		}
		
		public String getName() {
			return this.name;
		}
	}
	
	public static String getPermalinkForTypeAndId(String permalinkDomain, PermalinkUtil.Type type, Long id) {
		StringBuilder permalink = new StringBuilder("https://")
				.append(permalinkDomain);
		
		switch (type) {
			case READINGROOM:
				permalink = permalink.append("/readingRoom/view/")
					.append(id);
				break;
			case FOLIO:
				permalink = permalink.append("/folio/view/")
					.append(id);
				break;
		}
		
		return permalink.toString();
	}
}
