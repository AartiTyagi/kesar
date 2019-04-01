package com.kesar.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kesar.daos.CustomerDao;
import com.kesar.models.Customer;
import com.kesar.models.Login;
import com.kesar.utility.ConnectionProvider;

public class CustomerDaoImpl implements CustomerDao {

	@Override
	public boolean registerUser(Customer custObj)
	{
		
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			
			PreparedStatement ps=conn.prepareStatement("insert into Registration values(?,?,?,?,?,?,?)");

			
			ps.setString(1, custObj.getName());
	ps.setString(2, custObj.getMobileNo());
	ps.setString(3, custObj.getEmail());
	ps.setInt(4, custObj.getPinCode());
	ps.setString(5, custObj.getAddress());
	ps.setString(6, custObj.getCity());
	ps.setString(7, custObj.getState());
	
	PreparedStatement ps1=conn.prepareStatement("insert into Login values(?,?,'customer')");
	ps1.setString(1, custObj.getEmail());
	ps1.setString(2, custObj.getPassword());
	   
	  int i=ps.executeUpdate();
	  if(i!=0) {
		  ps1.executeUpdate();
		  
		return true;  

 	     
		  
	
		// TODO Auto-generated method stub
	}

	
}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
}
	@Override
	public Customer getUser(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Select * from Registration where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Customer cust=new Customer();
				cust.setName(rs.getString(1));
				cust.setMobileNo(rs.getString(2));
				cust.setEmail(rs.getString(3));
				cust.setPinCode(rs.getInt(4));
				cust.setAddress(rs.getString(5));
				cust.setCity(rs.getString(6));
				cust.setState(rs.getString(7));
				
				
				
				return cust;
			}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;

		}

	@Override
	public boolean updateUser(Customer custObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update Registration set cname=?,mobileno=?,pincode=?,address=?,city=?,state=? where email=?");

			ps.setString(1, custObj.getName());
	ps.setString(2, custObj.getMobileNo());
	ps.setInt(3, custObj.getPinCode());
	ps.setString(4, custObj.getAddress());
	ps.setString(5, custObj.getCity());
	ps.setString(6, custObj.getState());
	ps.setString(7,custObj.getEmail());
		
			int i=ps.executeUpdate();
			if(i!=0){
				
				return true;
			}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean changePassword(String email, String oldpassword,String newpassword) {
		try {
				Connection conn=ConnectionProvider.getConnection();
				PreparedStatement ps=conn.prepareStatement("select * from Login where loginId=?");
				ps.setString(1,email);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					String s2=rs.getString(2);
					if(s2.equals(oldpassword)){
					PreparedStatement ps1=conn.prepareStatement("update Login set password=? where loginId=?");
					ps1.setString(1,newpassword);
					ps1.setString(2,email);
					int i=ps1.executeUpdate();
					if(i!=0){
					return true;
					}
					else 
						return false;
					}
					else{
						return false;
					}
					}
				
					
			
				}
				catch(Exception e){
					e.printStackTrace();
				}
		return false;
	}
	

}