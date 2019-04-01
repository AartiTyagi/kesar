package com.kesar.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kesar.daos.CustomerDao;
import com.kesar.daos.LoginDao;
import com.kesar.daosimpl.CustomerDaoImpl;
import com.kesar.daosimpl.LoginDaoImpl;
import com.kesar.models.Customer;
import com.kesar.models.Login;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		String s1=request.getParameter("email");
		String s2=request.getParameter("pwd");
		
		LoginDao loginDaoObj=new LoginDaoImpl();
		Login obj=loginDaoObj.validate(s1,s2);
		if(obj==null) {
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			request.setAttribute("errorMsg","login fail");
			rd.forward(request, response);
		}
		else {
			String role=obj.getRole();
			if(role.equals("admin")) {
				RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
				rd.forward(request, response);
			}
			else if(role.equals("customer")) {
				
				CustomerDao custDao=new CustomerDaoImpl();
				Customer custObj=custDao.getUser(s1);
				
				HttpSession session=request.getSession();
				session.setAttribute("user",custObj);
				session.setAttribute("user1",custObj.getEmail());
				
				RequestDispatcher rd=request.getRequestDispatcher("CustomerHome.jsp");
				rd.forward(request, response);
		}
	}


	}

}
