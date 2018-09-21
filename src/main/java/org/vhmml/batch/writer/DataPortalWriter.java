package org.vhmml.batch.writer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.vhmml.dto.DataPortalResult;

public class DataPortalWriter implements ItemWriter<DataPortalResult> {
	
	@Autowired
	private DataPortalFullDataJsonFileWriter fullDataJsonFileWriter;
	
	@Autowired
	private DataPortalListingDataJsonFileWriter listingDataJsonFileWriter;
	
	@Autowired
	private DataPortalListingDataCsvFileWriter listingDataCsvFileWriter;
	
	@Override
	public void write(List<? extends DataPortalResult> results) throws Exception {
		List<String> fullDataJsonList = new ArrayList<String>();
		List<String> listingDataJsonList = new ArrayList<String>();
		List<String> listingDataCsvList = new ArrayList<String>();
		
		for (DataPortalResult result : results) {
			fullDataJsonList.add(result.getFullDataJsonResult());
			listingDataJsonList.add(result.getListingDataJsonResult());
			listingDataCsvList.add(result.getListingDataCsvResult());
		}
		
		fullDataJsonFileWriter.write(fullDataJsonList);
		listingDataJsonFileWriter.write(listingDataJsonList);
		listingDataCsvFileWriter.write(listingDataCsvList);
	}
	
	
	
}
