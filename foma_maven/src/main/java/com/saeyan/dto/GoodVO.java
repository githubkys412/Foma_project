package com.saeyan.dto;

public class GoodVO {

	
	String username;
	int num;
	public GoodVO(String username, int num) {
		super();
		this.username = username;
		this.num = num;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
}
