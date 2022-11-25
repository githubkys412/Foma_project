package com.saeyan.dto;

import java.sql.Timestamp;

public class SubBoardVO {

	
	
	private int num;
	private String name, content;
	private Timestamp writedate;
	public SubBoardVO(int num, String name, String content, Timestamp writedate) {
		super();
		this.num = num;
		this.name = name;
		this.content = content;
		this.writedate = writedate;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	
	
	
	
	
	
}
