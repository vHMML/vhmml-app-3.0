package org.vhmml.dto.elasticsearch;

import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.QueryStringQueryBuilder;
import org.elasticsearch.index.query.QueryStringQueryBuilder.Operator;

public class WildcardQuery extends MultiMatchQuery {
	
	// This Operator is different from the one used by MultiMatchQuery.
	protected Operator operator;
	
	public WildcardQuery(String searchText, String[] fields) {
		super(searchText, fields, null);		
	}
	
	public WildcardQuery(String searchText, String[] fields, Operator operator) {
		super(searchText, fields, null);
		this.operator = operator;
	}

	@Override
	public QueryBuilder getQuery() {
		QueryStringQueryBuilder queryBuilder = QueryBuilders.queryStringQuery(searchText);
		
		for(String field : fields) {
			queryBuilder.field(field);
		}
		
		if(this.operator != null) {
			queryBuilder.defaultOperator(this.operator);
		}
		
		return queryBuilder;
	}
}
