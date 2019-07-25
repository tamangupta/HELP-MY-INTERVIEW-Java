package com.iimt.dao;

import java.util.List;

import com.iimt.model.GroupDis;

public interface GroupDAO {
	public List<GroupDis> getAllQuestion();
	
	public String postQues(GroupDis groupDis);
	
	public String deleteQues(int id);
}
