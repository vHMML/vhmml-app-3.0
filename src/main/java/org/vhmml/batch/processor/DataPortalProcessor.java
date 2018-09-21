package org.vhmml.batch.processor;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.vhmml.dto.DataPortalResult;
import org.vhmml.entity.readingroom.ReadingRoomObject;

public class DataPortalProcessor implements ItemProcessor<ReadingRoomObject, DataPortalResult> {
	
	@Autowired
	private ListingDataJsonProcessor listingDataJsonProcessor;
	
	@Autowired
	private FullDataJsonProcessor fullDataJsonProcessor;
	
	@Autowired
	private ListingDataCsvProcessor listingDataCsvProcessor;
	
	@Override
	public DataPortalResult process(ReadingRoomObject readingRoomObject) throws Exception {
		final DataPortalResult results = new DataPortalResult();
		
		results.setFullDataJsonResult(fullDataJsonProcessor.process(readingRoomObject));
		results.setListingDataJsonResult(listingDataJsonProcessor.process(readingRoomObject));
		results.setListingDataCsvResult(listingDataCsvProcessor.process(readingRoomObject));
		
		return results;
	}
	
}
