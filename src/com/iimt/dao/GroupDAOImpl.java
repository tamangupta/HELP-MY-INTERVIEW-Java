package com.iimt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.iimt.dbutil.MyConnection;
import com.iimt.model.GroupDis;
import com.iimt.model.User;

public class GroupDAOImpl implements GroupDAO {
	//initialized connection
		private Connection conn = new MyConnection().getConn();
	@Override
	public List<GroupDis> getAllQuestion() {
		List<GroupDis> list = new ArrayList<GroupDis>();
		String sql = "SELECT * FROM GROUPDISCUSSION";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt("ID");
				String question = rs.getString("QUESTIONS");
				GroupDis group = new GroupDis(id, question);
				list.add(group);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public String postQues(GroupDis groupDis) {
		String res = "FAIL";
		String sql ="INSERT INTO  GROUPDISCUSSION(QUESTIONS) VALUES(?)";
		PreparedStatement pstmt =null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, groupDis.getQuestion());
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
	public String deleteQues(int id) {
		String res = "FAIL";
		String sql = "DELETE FROM GROUPDISCUSSION WHERE ID=?";
		PreparedStatement pst=null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
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
