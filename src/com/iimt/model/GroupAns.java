package com.iimt.model;

public class GroupAns {
	private String fullName;
	private String answer;
	public GroupAns() {
		super();
	}
	public GroupAns(String fullName, String answer) {
		super();
		this.fullName = fullName;
		this.answer = answer;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	

}
