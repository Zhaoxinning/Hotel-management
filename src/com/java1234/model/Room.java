package com.java1234.model;

public class Room {

	private int id;
	private String gradeName;//房间
	private String gradeDesc;//标记空和满
	
	
	public Room() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Room(String gradeName, String gradeDesc) {
		super();
		this.gradeName = gradeName;
		this.gradeDesc = gradeDesc;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName2) {
		this.gradeName = gradeName2;
	}
	public String getGradeDesc() {
		return gradeDesc;
	}
	public void setGradeDesc(String gradeDesc) {
		this.gradeDesc = gradeDesc;
	}
	
	
}
