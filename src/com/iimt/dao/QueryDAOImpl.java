package com.iimt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.iimt.dbutil.MyConnection;
import com.iimt.model.Feedback;
import com.iimt.model.QueryForm;

public class QueryDAOImpl implements QueryDAO {
	//initialized connection
	private Connection conn = new MyConnection().getConn();
	@Override
	public String insertQuery(QueryForm query) {
		String res = "FAIL";
		String sql = "INSERT INTO QUERY(NAME,EMAIL,SUBJECT,MESSAGE) VALUES(?,?,?,?)";
		PreparedStatement pst = null;
		try {
		                   
		pst =conn.prepareStatement(sql);
		pst.setString(1, query.getName());
		pst.setString(2,query.getEmail());
		pst.setString(3, query.getSubject());
		pst.setString(4, query.getMessage());
		  // Execute the statement
		int r = pst.executeUpdate();
		if (r > 0) {  
		         res = "SUCCESS";
		}                        
		} catch (SQLException e) {
		System.out.println(e);
		}
		return res;
	}

	@Override
	public List<QueryForm> getAllQuery() {
		List<QueryForm> list = new ArrayList<QueryForm>();
		String sql = "SELECT * FROM QUERY";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String subject = rs.getString("SUBJECT");
				String message = rs.getString("MESSAGE");
				QueryForm query = new QueryForm(name, email, subject, message);
				list.add(query);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public String deleteQuery(String email) {
		String res = "FAIL";
		String sql = "DELETE FROM QUERY WHERE EMAIL=?";
		PreparedStatement pst=null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			int r = pst.executeUpdate();
			if(r>0) {
				res="SUCCESS";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return res;
	}
}
