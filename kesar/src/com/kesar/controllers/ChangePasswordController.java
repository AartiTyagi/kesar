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
import com.kesar.daos.LoginDao;
import com.kesar.daosimpl.CustomerDaoImpl;
import com.kesar.daosimpl.LoginDaoImpl;
import com.kesar.models.Login;

@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		String str=(String)session.getAttribute("user1");
		 String s1 = request.getParameter("password"); 
	      String s2 = request.getParameter("newpassword");  
	      String s3 = request.getParameter("confirmpassword"); 
	      if(s2.equals(s3)){
	  		CustomerDao changePasswordObj=new CustomerDaoImpl();
			boolean obj=changePasswordObj.changePassword(str,s1,s2);
			if(obj==true){
		    	   RequestDispatcher rd=request.getRequestDispatcher("CustomerHome.jsp");
		    	   request.setAttribute("errorMsg","success");
					rd.forward(request, response);
			}
			else{
				
		    	   RequestDispatcher rd=request.getRequestDispatcher("ChangePassword.jsp");
		    	   request.setAttribute("errorMsg","fail");
					rd.forward(request, response);
		}
	    	  
	    	  
	    	  
	    	  
	      }
	      else{
	    	   RequestDispatcher rd=request.getRequestDispatcher("ChangePassword.jsp");
	    	   request.setAttribute("errorMsg","fail1");
				rd.forward(request, response);
	}

}
	
}
