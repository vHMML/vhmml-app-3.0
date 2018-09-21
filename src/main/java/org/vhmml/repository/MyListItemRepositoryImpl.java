package org.vhmml.repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.apache.commons.collections4.ListUtils;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.stereotype.Component;
import org.vhmml.entity.MyListItem;

@Component
public class MyListItemRepositoryImpl extends AbstractBatchUpdateRepository {
	private static final String BATCH_INSERT_SQL = "INSERT INTO vhmml.my_list_items(user_id, object_id, date_added) VALUES (?,?,?)";
	
	public int batchSave(List<MyListItem> records) {
		int count = 0;
		List<List<MyListItem>> recordBatches = ListUtils.partition(records, BATCH_SIZE);
		
		for(final List<MyListItem> batch : recordBatches) {
			// executeBatch resides on AbstractBatchUpdateRepository
			count += executeBatch(BATCH_INSERT_SQL, new BatchPreparedStatementSetter() {
				
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					MyListItem item = batch.get(i);
					ps.setLong(1, item.getUserId());
					ps.setLong(2, item.getObjectId());
					ps.setTimestamp(3, new Timestamp(item.getDateAdded().getTime()));					
					
				}
								
				public int getBatchSize() {
					return batch.size();
				}
			});			
		}
		
		return count;
	}

}
