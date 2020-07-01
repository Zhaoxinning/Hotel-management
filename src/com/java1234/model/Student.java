package com.java1234.model;

import java.util.Date;

public class Student {

	private int stuID;
	private String stuNo;//服务员编号
	private String stuName;//服务员姓名
	private String sex;//性别
	private Date birthday;
	private int gradeId=-1;
	private String email;
	private String stuDesc;
	
	private String gradeName;
	
	
	
	public Student() {
		super();
	}

	
	
	public Student(String stuNo, String stuName, String sex, Date birthday,
			int gradeId, String email, String stuDesc) {
		super();
		this.stuNo = stuNo;
		this.stuName = stuName;
		this.sex = sex;
		this.birthday = birthday;
		this.gradeId = gradeId;
		this.email = email;
		this.stuDesc = stuDesc;
	}


	public int getStuId() {
		return stuID;
	}
	public void setStuId(int stuId) {
		this.stuID = stuId;
	}
	public String getStuNo() {
		return stuNo;
	}
	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getGradeId() {
		return gradeId;
	}
	public void setGradeId(int gradeId) {
		this.gradeId = gradeId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStuDesc() {
		return stuDesc;
	}
	public void setStuDesc(String stuDesc) {
		this.stuDesc = stuDesc;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
}
