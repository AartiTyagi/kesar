package com.kesar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kesar.daos.CustomerDao;
import com.kesar.daosimpl.CustomerDaoImpl;
import com.kesar.models.Customer;

@WebServlet("/signup")
public class CustomerRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter(); 
        
        
        String s1 = request.getParameter("yourname"); 
        String s2 = request.getParameter("mobileno");  
        String s3 = request.getParameter("email");  
        String s4 = request.getParameter("pincode");  
        String s5 = request.getParameter("address"); 
        String s6 = request.getParameter("city");  
        String s7 = request.getParameter("state");  
        String s8 = request.getParameter("password");  

        Customer cust=new Customer();
        cust.setName(s1);
        cust.setAddress(s5);
        cust.setCity(s6);
        cust.setEmail(s3);
        cust.setMobileNo(s2);
        cust.setState(s7);
        cust.setPassword(s8);
        cust.setPinCode(Integer.parseInt(s4));
        
        CustomerDao sud=new CustomerDaoImpl();
    
       boolean obj=sud.registerUser(cust);
       if(obj==false)
       {
    	   //out.println("<div align='center' style='color:red'><h3>problem in registering.Try Again....</h3></div>");
       //	RequestDispatcher rd=request.getRequestDispatcher("CustomerRegister.jsp");
	   //  rd.include(request, response);
    	   RequestDispatcher rd=request.getRequestDispatcher("CustomerRegister.jsp");
			request.setAttribute("errorMsg","failed");
			rd.forward(request, response);
    	   
       }
	
       else{
	    
    	//out.println("<div align='center' style='color:green'><h3>registered successfully...Now u can login</h3></div>");
    	//RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
	    // rd.include(request, response);
    	   RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
    	   request.setAttribute("errorMsg","successful");
			rd.forward(request, response);
	
	}
}
}

