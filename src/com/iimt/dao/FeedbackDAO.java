package com.iimt.dao;

import java.util.List;

import com.iimt.model.Feedback;

public interface FeedbackDAO {
	
	public String postfeed(Feedback feedback);
	
	public List<Feedback> getAllFeed();
	
	public String deleteExp(String email);
	
	public String UpdateExp(Feedback feedback);
	
	public Feedback findExp(String email);

}
