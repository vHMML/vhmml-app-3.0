package org.vhmml.repository.readingroom;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.collections4.ListUtils;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.stereotype.Component;
import org.vhmml.entity.readingroom.ReadingRoomObject;
import org.vhmml.entity.readingroom.ReadingRoomObject.AccessRestriction;
import org.vhmml.entity.readingroom.ReadingRoomObject.Status;
import org.vhmml.repository.AbstractBatchUpdateRepository;

@Component
public class ReadingRoomObjectRepositoryImpl extends AbstractBatchUpdateRepository {
 
	private static final String BATCH_INSERT_SQL = "INSERT INTO reading_room_objects (id, processed_by, repository_id, shelf_mark, common_name, binding, provenance, bibliography, notes, hmml_project_number, inputter, input_date, reproduction_notes, acknowledgments, city_id, country_id, object_type, capture_date, access_restriction, viewable_online, collation, download_option, icon_name, cite_as, data_source, medium, current_status, condition_notes, summary, holding_institution_id, surrogate_format_id, features_imported, binding_height, binding_width, binding_depth, binding_dimensions_imported, right_to_left, foliation) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";	
	
	public int batchSave(List<ReadingRoomObject> records) {
		int count = 0;
		List<List<ReadingRoomObject>> recordBatches = ListUtils.partition(records, BATCH_SIZE);
		
		for(final List<ReadingRoomObject> batch : recordBatches) {
			// executeBatch resides on AbstractBatchUpdateRepository
			count += executeBatch(BATCH_INSERT_SQL, new BatchPreparedStatementSetter() {
				
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					ReadingRoomObject readingRoomObject = batch.get(i);
					
					ps.setLong(1, readingRoomObject.getId());
					ps.setString(2, readingRoomObject.getProcessedBy());
					Long repoId = readingRoomObject.getRepository() != null ? readingRoomObject.getRepository().getId() : null;					
					ps.setObject(3, repoId);
					ps.setString(4, readingRoomObject.getShelfMark());
					ps.setString(5, readingRoomObject.getCommonName());
					ps.setString(6, readingRoomObject.getBinding());
					ps.setString(7, readingRoomObject.getProvenance());
					ps.setString(8, readingRoomObject.getBibliography());
					ps.setString(9, readingRoomObject.getNotes());
					ps.setString(10, readingRoomObject.getHmmlProjectNumber());
					ps.setString(11, readingRoomObject.getInputter());
					ps.setString(12, readingRoomObject.getInputDate());					
					ps.setString(13, readingRoomObject.getReproductionNotes());
					ps.setString(14, readingRoomObject.getAcknowledgments());					

					Long cityId = readingRoomObject.getCity() != null ? readingRoomObject.getCity().getId() : null;
					ps.setObject(15, cityId);				
					
					Long countryId = readingRoomObject.getCountry() != null ? readingRoomObject.getCountry().getId() : null;
					ps.setObject(16, countryId);					
					ps.setString(17, readingRoomObject.getType().name());
					
					if(readingRoomObject.getCaptureDate() != null) {
						ps.setDate(18, new java.sql.Date(readingRoomObject.getCaptureDate().getTime()));
					} else {
						ps.setDate(18, null);
					}
					
					String accessRestriction = readingRoomObject.getAccessRestriction() != null ? readingRoomObject.getAccessRestriction().name() : AccessRestriction.REGISTERED.name();					
					ps.setString(19, accessRestriction);
					ps.setBoolean(20, readingRoomObject.isViewableOnline());
					ps.setString(21, readingRoomObject.getCollation());
					ps.setString(22, readingRoomObject.getDownloadOption());
					ps.setString(23, readingRoomObject.getIconName());
					ps.setString(24, readingRoomObject.getCiteAs());
					ps.setString(25, readingRoomObject.getDataSource());
					ps.setString(26, readingRoomObject.getMedium());					
					ps.setString(27, readingRoomObject.getCurrentStatus() != null ? readingRoomObject.getCurrentStatus().name() : Status.UNKNOWN.name());
					ps.setString(28, readingRoomObject.getConditionNotes());			
					ps.setString(29, readingRoomObject.getSummary());					
					ps.setObject(30, readingRoomObject.getHoldingInstitution() != null ? readingRoomObject.getHoldingInstitution().getId() : null);
					ps.setObject(31, readingRoomObject.getSurrogateFormat() != null ? readingRoomObject.getSurrogateFormat().getId() : null);
					ps.setString(32, readingRoomObject.getFeaturesImported());
					ps.setObject(33, readingRoomObject.getBindingHeight() != null ? readingRoomObject.getBindingHeight() : null);
					ps.setObject(34, readingRoomObject.getBindingWidth() != null ? readingRoomObject.getBindingWidth() : null);
					ps.setObject(35, readingRoomObject.getBindingDepth() != null ? readingRoomObject.getBindingDepth() : null);					
					ps.setString(36, readingRoomObject.getBindingDimensionsImported());
					ps.setBoolean(37, readingRoomObject.isRightToLeft());					
					ps.setString(38, readingRoomObject.getFoliation());
				}
								
				public int getBatchSize() {
					return batch.size();
				}
			});			
		}
		
		return count;
	}
}
