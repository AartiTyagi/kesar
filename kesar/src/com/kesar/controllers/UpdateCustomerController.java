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
    	String s2=request.getParameter("mobileno");
    	String s3=request.getParameter("email");
    	String s4=request.getParameter("pincode");
    	String s5=request.getParameter("address");
    	String s6=request.getParameter("city");
    	String s7=request.getParameter("state");
   
    	
    	
    	
    	Customer userObj=new Customer();
    	userObj.setName(s1);
    	userObj.setEmail(s3);
    	userObj.setMobileNo(s2);
        userObj.setPinCode(Integer.parseInt(s4));
    	userObj.setAddress(s5);
    	userObj.setCity(s6);
    	userObj.setState(s7);
    	CustomerDao dao=new CustomerDaoImpl();
    	boolean r=dao.updateUser(userObj);
    	if(r==true){
    		HttpSession session=request.getSession();
    		request.setAttribute("errorMsg", "success");
    		session.setAttribute("user",userObj);
    		RequestDispatcher rd=request.getRequestDispatcher("ViewProfile.jsp");
    		rd.forward(request, response);
    	}
    	else {
    		request.setAttribute("errorMsg", "fail");
    		RequestDispatcher rd=request.getRequestDispatcher("UpdateProfile.jsp");
    		rd.forward(request, response);
    				
    	}
    	
	}

	}


