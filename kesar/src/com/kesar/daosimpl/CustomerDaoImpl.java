package com.kesar.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kesar.daos.CustomerDao;
import com.kesar.models.Customer;
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
	public Customer validateUser(String email, String pass) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from Registration where email=? and password=?");
			ps.setString(1,email);
			ps.setString(2,pass);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				String em=rs.getString(3);
				String pa=rs.getString(8);
				String name=rs.getString(1);
				String mobileno=rs.getString(2);
				Integer pin=rs.getInt(4);
				String address=rs.getString(5);
				String city=rs.getString(6);
				String state=rs.getString(7);
				
				Customer obj=new Customer();
				obj.setEmail(em);
				obj.setPassword(pa);
				obj.setName(name);
				obj.setMobileNo(mobileno);
				obj.setPinCode(pin);
				obj.setAddress(address);
				obj.setCity(city);
				obj.setState(state);
			
				return obj;
			}
			else {
				return null;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		
		return null;
	}

	@Override
	public Customer getUser(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			
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
			PreparedStatement ps=conn.prepareStatement("Update Registration set password=?,yourname=?,mobileno=?,address=?,city=?,state=? where email=?");

			ps.setString(1, custObj.getName());
	ps.setString(2, custObj.getMobileNo());
	ps.setInt(4, custObj.getPinCode());
	ps.setString(5, custObj.getAddress());
	ps.setString(6, custObj.getCity());
	ps.setString(7, custObj.getState());
		
			
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			}
			else {
				return false;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean changePassword(String email, String newPassword) {
		try {
				Connection conn=ConnectionProvider.getConnection();
				}
				catch(Exception e){
					e.printStackTrace();
				}
			
		return false;
	}

}