package com.kesar.daos;
import com.kesar.models.Customer;

public interface CustomerDao {
	public boolean registerUser(Customer customerObj);
	public Customer getUser(String email);
	public boolean updateUser(Customer custObj);
	public boolean changePassword(String email,String oldpassword,String newPassword);

}
