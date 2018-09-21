package org.vhmml.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.vhmml.batch.writer.DataPortalBaseFileWriter.FileType;
import org.vhmml.dto.DataPortalDatasetFile;
import org.vhmml.dto.DataPortalListingSchemaDTO;
import org.vhmml.entity.readingroom.ReadingRoomObject;

import com.google.gson.JsonObject;

public interface DataPortalService {
	public String createListingDataJson(Map<String, String> searchParameters) throws IOException;
	public String createFullDataJsonUsingSearchParameters(Map<String, String> searchParameters) throws IOException;
	public String createFullDataJsonUsingList(List<ReadingRoomObject> readingRoomObjectList);
	public JsonObject createSingleFullDataJsonForObject(ReadingRoomObject readingRoomObject);
	public boolean executeDatasetJob();
	public DataPortalListingSchemaDTO createSingleListingDataJsonUsingObject(ReadingRoomObject readingRoomObject);
	public String getLastCompletedDataPortalHistory();
	public DataPortalDatasetFile getDatasetFileInformation(FileType currentFile);
	public String createDataExportForExportType(Long objectId, String exportType);
}
