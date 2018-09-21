package org.vhmml.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.vhmml.entity.block.Block;

@Repository
public interface BlockRepository extends CrudRepository<Block, Long> {
	
	List<Block> findBySection(String section);

	Block findBySectionAndName(String section, String blockName);
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE block_components SET value = ?1 WHERE block_id = ?2 AND type = ?3", nativeQuery = true)
	void updateBlockComponentForBlock(String value, long blockId, String type);

	@Transactional
	@Modifying
	@Query(value = "UPDATE block_components SET is_enabled = ?1 WHERE block_id = ?2 AND type = ?3", nativeQuery = true)
	void updateBlockComponentStatusForBlock(int useImage, long blockId, String type);
}
