package org.vhmml.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.vhmml.entity.NewsItem;

@Repository
public interface NewsRepository extends CrudRepository<NewsItem, Long> {
	
	@Query(value = "SELECT bc.value FROM blocks b, block_components bc WHERE bc.type = 'LISTAMOUNT' AND b.section = 'NEWS' AND b.id = bc.block_id", nativeQuery = true)
	int retrieveMaxVisibleNewsItemAmount();

	@Query(value = "SELECT * FROM news_items ORDER BY date DESC LIMIT ?1", nativeQuery = true)
	List<NewsItem> retrieveNewsItems(int amountOfItems);

}
