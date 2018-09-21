package org.vhmml.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.vhmml.entity.MyListItem;

@Repository
public interface MyListItemRepository extends CrudRepository<MyListItem, Long>, BatchSaveRepository<MyListItem> {
	Set<MyListItem> findAllByUserId(Long id);
	
	@Transactional
	@Modifying
	@Query(value = "DELETE FROM my_list_items WHERE user_id = ?1 AND object_id IN (?2)", nativeQuery = true)
	void deleteByUserIdAndObjectIds(Long userId, Set<Long> ids);

	@Transactional
	@Modifying
	@Query(value = "DELETE FROM my_list_items WHERE user_id = ?1 AND object_id = ?2", nativeQuery = true)
	void deleteByUserIdAndObjectId(Long userId, Long objectId);

	void deleteByUserId(Long id);
}
