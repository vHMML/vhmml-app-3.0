package org.vhmml.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.vhmml.entity.SitemapHistory;

@Repository
public interface SitemapRepository extends CrudRepository<SitemapHistory, Long> {
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE sitemap_history SET status = ?1 WHERE id = ?2", nativeQuery = true)
	void updateSitemapHistory(String status, Long id);
	
	@Query(value = "SELECT * FROM sitemap_history WHERE status = 'COMPLETED' ORDER BY last_generated DESC LIMIT 1", nativeQuery = true)
	SitemapHistory findLatestSuccessfulSitemapGeneration();
}
