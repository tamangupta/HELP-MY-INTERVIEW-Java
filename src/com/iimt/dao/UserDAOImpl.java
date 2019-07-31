package com.iimt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.iimt.dbutil.MyConnection;
import com.iimt.model.User;

public class UserDAOImpl implements UserDAO {
	//initialized connection
	private Connection conn = new MyConnection().getConn();
	@Override
	public String insert(User user) {
		String res = "FAIL";
		String sql ="INSERT INTO USERDETAILS(FIRSTNAME,LASTNAME,EMAILADDRESS,MOBILENUMBER,PASSWORD,USERTYPE) VALUES(?,?,?,?,?,?)";
		PreparedStatement pstmt =null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getFirstName());
			pstmt.setString(2, user.getLastName());
			pstmt.setString(3, user.getEmailAddress());
			pstmt.setString(4, user.getMobilenumber());
			pstmt.setString(5, user.getPassword());
			pstmt.setString(6, user.getUserType());
			int rst= pstmt.executeUpdate();
			if(rst>0) {
				res="SUCCESS";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public String update(User user) {
		String res = "FAIL";
		String sql = "UPDATE USERDETAILS SET firstname=?, lastname=?,mobilenumber=?,password=?,usertype=? WHERE emailaddress=?";
		PreparedStatement pstmt = null;
		try {
			//Statement creation
			pstmt = conn.prepareStatement(sql);
			//set the parameter value
			pstmt.setString(1,user.getFirstName() );
			pstmt.setString(2, user.getLastName());
			pstmt.setString(3, user.getMobilenumber());
			pstmt.setString(4, user.getPassword());
			pstmt.setString(5, user.getUserType());
			pstmt.setString(6, user.getEmailAddress());
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
	public String delete(String emailAddress) {
		String res = "FAIL";
		String sql = "DELETE FROM USERDETAILS WHERE EMAILADDRESS=?";
		PreparedStatement pst=null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, emailAddress);
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
	public List<User> getAllUser() {
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM USERDETAILS";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				String firstName = rs.getString("FIRSTNAME");
				String lastName = rs.getString("LASTNAME");
				String emailAddress = rs.getString("EMAILADDRESS");
				String mobileNumber = rs.getString("MOBILENUMBER");
				String password = rs.getString("PASSWORD");
				String userType = rs.getString("USERTYPE");
				User u = new User(firstName, lastName, emailAddress, mobileNumber, password, userType);
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public User findByEmail(String email) {
		String sql = "SELECT * FROM USERDETAILS WHERE EMAILADDRESS=?";
		PreparedStatement pst = null;
		ResultSet rst = null;
		User u=null;
//		Student s = new Student();
		try {
			pst =conn.prepareStatement(sql);
			pst.setString(1, email);
			rst = pst.executeQuery();
			if(rst.next()) {
			String firstName = rst.getString("FIRSTNAME");
			String lastName = rst.getString("LASTNAME");
			String emailAddress = rst.getString("EMAILADDRESS");
			String mobileNumber = rst.getString("MOBILENUMBER");
			String password = rst.getString("PASSWORD");
			String userType = rst.getString("USERTYPE");
			u=new User(firstName, lastName, emailAddress, mobileNumber, password, userType);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return  u;
	}

	@Override
	public String isValidUser(User user) {
		String fullname="";
		String sql = "SELECT * FROM USERDETAILS WHERE EMAILADDRESS=? && PASSWORD=? ";
		PreparedStatement stm = null;
		ResultSet rs = null;
		User us = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, user.getEmailAddress());
			stm.setString(2, user.getPassword());
			rs = stm.executeQuery();
			if(rs.next()) {
				String firstName = rs.getString("FIRSTNAME");
				String lastName = rs.getString("LASTNAME");
				fullname=firstName+" "+lastName;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return fullname;
	}

	@Override
	public String getUserType(String emailAddress) {
		String usertype="";
		String sql ="SELECT USERTYPE FROM USERDETAILS WHERE EMAILADDRESS=?";
		PreparedStatement ps = null;
		ResultSet rse = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, emailAddress);
			rse = ps.executeQuery();
			if(rse.next()) {
				usertype = rse.getString("USERTYPE");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return usertype;
	}

}
