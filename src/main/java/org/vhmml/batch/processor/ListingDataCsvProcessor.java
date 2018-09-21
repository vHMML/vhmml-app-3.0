package org.vhmml.batch.processor;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.vhmml.dto.DataPortalListingSchemaDTO;
import org.vhmml.entity.readingroom.ReadingRoomObject;
import org.vhmml.service.DataPortalService;

@Component
public class ListingDataCsvProcessor implements ItemProcessor<ReadingRoomObject, String> {
	
	@Autowired
	private DataPortalService dataPortalService;

	@Override
	public String process(ReadingRoomObject readingRoomObject) throws Exception {
		DataPortalListingSchemaDTO listingObject = dataPortalService.createSingleListingDataJsonUsingObject(readingRoomObject);
		
		StringBuilder csv = new StringBuilder();
		
		csv.append(listingObject.getId()).append(",");
		csv.append(listingObject.getPermalink()).append(",");
		csv.append(StringEscapeUtils.escapeCsv(listingObject.getCountry())).append(",");
		csv.append(StringEscapeUtils.escapeCsv(listingObject.getCity())).append(",");
		csv.append(StringEscapeUtils.escapeCsv(listingObject.getRepository())).append(",");
		csv.append(StringEscapeUtils.escapeCsv(listingObject.getShelfmark())).append(",");
		csv.append(StringEscapeUtils.escapeCsv(listingObject.getHmmlProjectNumber()));
		
		return csv.toString();
	}
}
