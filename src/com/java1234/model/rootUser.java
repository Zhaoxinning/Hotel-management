package com.java1234.model;

public class rootUser {
	private String userName;
	private String password;
	private String telephone;
	
	public rootUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public rootUser(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	
	public rootUser(String userName, String password,String telephone) {
		super();
		this.userName = userName;
		this.password = password;
		this.telephone = telephone;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String gettelephone() {
		return telephone;
	}
	public void settelephone(String telephone) {
		this.telephone = telephone;
	}
}
