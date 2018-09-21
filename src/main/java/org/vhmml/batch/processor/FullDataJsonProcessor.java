package org.vhmml.batch.processor;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.vhmml.entity.readingroom.ReadingRoomObject;
import org.vhmml.service.DataPortalService;

import com.google.gson.Gson;

@Component
public class FullDataJsonProcessor implements ItemProcessor<ReadingRoomObject, String> {

	@Autowired
	private DataPortalService dataPortalService;

	@Override
	public String process(ReadingRoomObject readingRoomObject) throws Exception {
		Gson gson = new Gson();
		return gson.toJson(dataPortalService.createSingleFullDataJsonForObject(readingRoomObject));
	}

}
