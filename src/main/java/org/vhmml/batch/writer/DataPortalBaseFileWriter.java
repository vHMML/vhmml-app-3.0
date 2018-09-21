package org.vhmml.batch.writer;

import java.io.File;
import java.io.FileWriter;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

public class DataPortalBaseFileWriter implements ItemWriter<String> {

	private static final Logger LOG = Logger.getLogger(DataPortalBaseFileWriter.class);
	
	@Autowired
	ServletContext servletContext;
	
	@Value("${data.portal.public.dir}")
	private String PUBLIC_DATASET_DIR;
	
	@Value("${data.portal.temp.dir}")
	private String TEMP_DATASET_DIR;
	
	private FileType fileType;
	
	public enum FileType {
		FULL_DATA_JSON("vhmml_rr_fulldata.json", "vhmml_rr_fulldata.zip"),
		LISTING_DATA_JSON("vhmml_rr_listingdata.json", "vhmml_rr_listingdata.zip"),
		LISTING_DATA_CSV("vhmml_rr_listingdata.csv", "vhmml_rr_listingdata_csv.zip");
	
		private final String name;
		private final String zipName;
		
		FileType(String name, String zipName) {
			this.name = name;
			this.zipName = zipName;
		}

		public String getName() {
			return name;
		}
		
		public String getZipName() {
			return zipName;
		}
	}
	
	public DataPortalBaseFileWriter() {}
	
	public DataPortalBaseFileWriter(FileType fileType) {
		super();
		this.fileType = fileType;
	}

	@Override
	public void write(List<? extends String> jsonList) throws Exception {
		String filePath = new StringBuilder(TEMP_DATASET_DIR).append(this.fileType.getName()).toString();
		File fullDataJsonFile = new File(servletContext.getRealPath(filePath));

		LOG.info("Processing records for " + this.fileType);
		
		// Create the new temp file.
		try (FileWriter writer = new FileWriter(fullDataJsonFile.getAbsoluteFile(), true)) {
			
			if (this.fileType.equals(FileType.FULL_DATA_JSON) || this.fileType.equals(FileType.LISTING_DATA_JSON)) {
				for (String json : jsonList) {
					writer.append(json).append(",").append(System.lineSeparator());
				}
			} else {
				for (String json : jsonList) {
					writer.append(json).append(System.lineSeparator());
				}
			}

		} catch (Exception e) {
			LOG.error("Error writing to file for data portal dataset.", e);
		}
		
		LOG.info("Wrote " + jsonList.size() + " records to file.");
	}

}
