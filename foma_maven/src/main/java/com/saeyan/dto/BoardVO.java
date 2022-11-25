package com.saeyan.dto;

import java.sql.Timestamp;

public class BoardVO {
	private int num;
	private String name;
	private String email;
	private String pass;
	private String title;
	private String content;
	private int readcount;
	private Timestamp writedate;
	private int good;
	
	
	private String fileName,uploadFilePath;
	
	
		
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getUploadFilePath() {
		return uploadFilePath;
	}

	public void setUploadFilePath(String uploadFilePath) {
		this.uploadFilePath = uploadFilePath;
	}

	public BoardVO(int num, String name, String email, String pass, String title, String content, int readcount,
			Timestamp writedate, int good, String fileName, String uploadFilePath) {
		super();
		this.num = num;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.title = title;
		this.content = content;
		this.readcount = readcount;
		this.writedate = writedate;
		this.good = good;
		this.fileName = fileName;
		this.uploadFilePath = uploadFilePath;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public BoardVO(int num, String name, String email, String pass, String title, String content, int readcount,
			Timestamp writedate, int good) {
		super();
		this.num = num;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.title = title;
		this.content = content;
		this.readcount = readcount;
		this.writedate = writedate;
		this.good = good;
	}

	public BoardVO() {
		super();
	}

	public BoardVO(int num, String name, String email, String pass, String title, String content, int readcount,
			Timestamp writedate) {
		super();
		this.num = num;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.title = title;
		this.content = content;
		this.readcount = readcount;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	
	
}
