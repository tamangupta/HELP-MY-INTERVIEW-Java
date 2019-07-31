package com.iimt.dao;

import java.util.List;

import com.iimt.model.*;

public interface GroupDAO {
	public List<GroupDis> getAllQuestion();
	
	public String postQues(GroupDis groupDis);
	
	public String deleteQues(int id);
	
	public List<GroupAns> getAllAnswer();
	
	public String postAns(GroupAns groupAns);
	
	public String deleteAllAns();
}
