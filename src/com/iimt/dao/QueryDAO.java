package com.iimt.dao;

import java.util.List;

import com.iimt.model.QueryForm;

public interface QueryDAO {
	
	public String insertQuery(QueryForm query);
	
	public List<QueryForm> getAllQuery();
	
	public String deleteQuery(String email);

}
