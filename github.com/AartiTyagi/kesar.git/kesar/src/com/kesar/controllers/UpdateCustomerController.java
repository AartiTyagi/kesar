package com.kesar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kesar.daos.CustomerDao;
import com.kesar.daosimpl.CustomerDaoImpl;
import com.kesar.models.Customer;

@WebServlet("/UpdateCustomerController")
public class UpdateCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
    	PrintWriter out=response.getWriter();
    	
    	String s1=request.getParameter("yourname");
    	String s2=request.getParameter("email");
    	String s3=request.getParameter("password");
    	String s4=request.getParameter("pincode");
    	String s5=request.getParameter("address");
    	String s6=request.getParameter("city");
    	String s7=request.getParameter("state");
    	String s8=request.getParameter("pincode");
    	
    	
    	
    	Customer userObj=new Customer();
    	userObj.setEmail(s2);
    	userObj.setMobileNo(s3);
    	userObj.setName(s1);                                 
    	userObj.setPinCode(Integer.parseInt(s4));
    	userObj.setAddress(s5);
    	userObj.setCity(s6);
    	userObj.setState(s7);
    	userObj.setPassword(s8);
    	CustomerDao dao=new CustomerDaoImpl();
    	boolean r=dao.updateUser(userObj);
    	if(r){
    		HttpSession session=request.getSession();
    		request.setAttribute("errorMsg", "User updated Succesfully");
    		session.setAttribute("user",userObj);
    		RequestDispatcher rd=request.getRequestDispatcher("ViewProfile.jsp");
    		rd.forward(request, response);
    	}
    	else {
    		RequestDispatcher rd=request.getRequestDispatcher("UpdateProfile.jsp");
    		rd.forward(request, response);
    				
    	}
    	
	}

	}


