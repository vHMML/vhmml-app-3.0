package org.vhmml.repository;

import java.util.Date;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.vhmml.entity.DataPortalHistory;

@Repository
public interface DataPortalRepository extends CrudRepository<DataPortalHistory, Long> {
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE data_portal_history SET status = ?1 WHERE id = ?2", nativeQuery = true)
	void updateDataPortalHistoryStatus(String status, Long id);
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE data_portal_history SET status = ?1, end_datetime = ?2, total_time_s = ?3 WHERE id = ?4", nativeQuery = true)
	void updateDataPortalHistoryWithEndDatetime(String status, Date endDateTime, long totalTimeInMs, Long id);
	
	@Query(value = "SELECT * FROM data_portal_history WHERE status = 'COMPLETED' ORDER BY start_datetime DESC LIMIT 1", nativeQuery = true)
	DataPortalHistory findLatestCompletedDatasetGeneration();
}
