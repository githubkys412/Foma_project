package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action { //싱글톤 기반 
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
}
