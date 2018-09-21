package org.vhmml.batch.writer;

import org.springframework.stereotype.Component;

@Component
public class DataPortalFullDataJsonFileWriter extends DataPortalBaseFileWriter {
	
	public DataPortalFullDataJsonFileWriter() {
		super(DataPortalBaseFileWriter.FileType.FULL_DATA_JSON);
	}

}
