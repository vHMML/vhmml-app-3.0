package org.vhmml.repository.readingroom;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.vhmml.entity.readingroom.ReadingRoomObjectFeature;
import org.vhmml.repository.BatchSaveRepository;

public interface ReadingRoomObjectFeatureRepository extends CrudRepository<ReadingRoomObjectFeature, Long>, BatchSaveRepository<ReadingRoomObjectFeature> {

	public static final String DELETE_BY_IMPORT_SOURCE_QUERY = "delete from reading_room_object_features where reading_room_object_id in(select o.id from reading_room_objects o where o.data_source = ?1)";
	
	@Modifying
	@Query(value = DELETE_BY_IMPORT_SOURCE_QUERY, nativeQuery = true)
	public void deleteByImportSource(String importSource);
	
	public void deleteByReadingRoomObjectId(Long objectId);
}
