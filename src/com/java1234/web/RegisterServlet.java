package com.java1234.web;

import com.java1234.model.User;
import com.java1234.dao.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String telephone = request.getParameter("telephone");
		User user = new User(username, password, telephone);
		UserDao udao=new UserDao();
		if(udao.insert(null, user)){
			response.sendRedirect("logonsuccess.jsp");
		}
		else 
		{
			response.sendRedirect("logonfail.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}