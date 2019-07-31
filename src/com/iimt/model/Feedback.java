package com.iimt.model;

public class Feedback {
	private String companyName;
	private String post;
	private String salary;
	private String emailAddress;
	private String year;
	private String experience;
	public Feedback() {
		super();
	}
	public Feedback(String companyName, String post, String salary, String emailAddress, String year,
			String experience) {
		super();
		this.companyName = companyName;
		this.post = post;
		this.salary = salary;
		this.emailAddress = emailAddress;
		this.year = year;
		this.experience = experience;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
}
