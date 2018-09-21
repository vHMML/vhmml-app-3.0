package org.vhmml.dto;

import org.apache.commons.io.FileUtils;

public class DataPortalDatasetFile {
	private long filesize;
	private String fileLocation;
	private String lastModified;
	private String formattedFilesize;
	
	public DataPortalDatasetFile(long filesize, String fileLocation, String lastModified) {
		this.filesize = filesize;
		this.fileLocation = fileLocation;
		this.lastModified = lastModified;
	}
	
	public String getLastModified() {
		return lastModified;
	}

	public void setLastModified(String lastModified) {
		this.lastModified = lastModified;
	}
	
	public long getFilesize() {
		return filesize;
	}

	public void setFilesize(long bytes) {
		this.filesize = bytes;
	}
	
	public String getFormattedFilesize() {
		return FileUtils.byteCountToDisplaySize(this.filesize);
	}
	
	public String getFileLocation() {
		return fileLocation;
	}

	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}
}
