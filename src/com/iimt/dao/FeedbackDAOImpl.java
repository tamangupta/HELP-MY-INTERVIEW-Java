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
import com.iimt.model.User;

public class FeedbackDAOImpl implements FeedbackDAO {
	//initialized connection
		private Connection conn = new MyConnection().getConn();
	@Override
	public String postfeed(Feedback feedback) {
		String res = "FAIL";
		String sql = "INSERT INTO INTERVIEWEXPERIENCE(COMPANYNAME,POST,SALARY,EMAILADDRESS,EXPERIENCE,YEAR) VALUES(?,?,?,?,?,?)";
		PreparedStatement pst = null;
		try {
		                   
		pst =conn.prepareStatement(sql);
		pst.setString(1, feedback.getCompanyName());
		pst.setString(2,feedback.getPost());
		pst.setString(3, feedback.getSalary());
		pst.setString(4, feedback.getEmailAddress());
		pst.setString(5, feedback.getExperience());
		pst.setString(6, feedback.getYear());
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
	public List<Feedback> getAllFeed() {
		List<Feedback> list = new ArrayList<Feedback>();
		String sql = "SELECT * FROM INTERVIEWEXPERIENCE";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				String companyName = rs.getString("COMPANYNAME");
				String 	post = rs.getString("POST");
				String salary = rs.getString("SALARY");
				String emailAddress = rs.getString("EMAILADDRESS");
				String experience = rs.getString("EXPERIENCE");
				String year = rs.getString("YEAR");
				Feedback feed = new Feedback(companyName, post, salary, emailAddress, year, experience);
				list.add(feed);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public String deleteExp(String email) {
		String res = "FAIL";
		String sql = "DELETE FROM INTERVIEWEXPERIENCE WHERE EMAILADDRESS=?";
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

	@Override
	public String UpdateExp(Feedback feedback) {
		String res = "FAIL";
		String sql = "UPDATE INTERVIEWEXPERIENCE SET companyname=?, post=?,salary=?,year=?,experience=? WHERE emailaddress=?";
		PreparedStatement pstmt = null;
		try {
			//Statement creation
			pstmt = conn.prepareStatement(sql);
			//set the parameter value
			pstmt.setString(1,feedback.getCompanyName() );
			pstmt.setString(2, feedback.getPost());
			pstmt.setString(3,feedback.getSalary());
			pstmt.setString(4, feedback.getYear());
			pstmt.setString(5, feedback.getExperience());
			pstmt.setString(6, feedback.getEmailAddress());
			//Execute the statement
			int r = pstmt.executeUpdate();
			if(r>0) {
				res = "SUCCESS";
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return res;
	}

	@Override
	public Feedback findExp(String email) {
		String sql = "SELECT * FROM INTERVIEWEXPERIENCE WHERE EMAILADDRESS=?";
		PreparedStatement pst = null;
		ResultSet rst = null;
		Feedback f=null;
		try {
			pst =conn.prepareStatement(sql);
			pst.setString(1, email);
			rst = pst.executeQuery();
			if(rst.next()) {
			String companyName = rst.getString("COMPANYNAME");
			String post = rst.getString("POST");
			String salary = rst.getString("SALARY");
			String emailAddress = rst.getString("EMAILADDRESS");
			
			String year = rst.getString("YEAR");
			String experience = rst.getString("EXPERIENCE");
			f = new Feedback(companyName, post, salary, emailAddress, year, experience);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return  f;
	}

}
