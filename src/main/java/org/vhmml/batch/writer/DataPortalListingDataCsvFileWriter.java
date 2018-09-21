package org.vhmml.batch.writer;

import org.springframework.stereotype.Component;

@Component
public class DataPortalListingDataCsvFileWriter extends DataPortalBaseFileWriter {
	
	public DataPortalListingDataCsvFileWriter() {
		super(DataPortalBaseFileWriter.FileType.LISTING_DATA_CSV);
	}

}