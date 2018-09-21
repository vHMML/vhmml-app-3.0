package org.vhmml.batch.writer;

import org.springframework.stereotype.Component;

@Component
public class DataPortalListingDataJsonFileWriter extends DataPortalBaseFileWriter {

	public DataPortalListingDataJsonFileWriter() {
		super(DataPortalBaseFileWriter.FileType.LISTING_DATA_JSON);
	}

}
