package com.iimt.dao;

import java.util.List;

import com.iimt.model.User;

public interface UserDAO {
	
	public String insert(User user);
	
	public String update(User user);
	
	public String delete(String emailAddress);
	
	public List<User> getAllUser();
	
	public User findByEmail(String email);
	
	public boolean isValidUser(User user);
	
	public String getUserType(String emailAddress);

}
