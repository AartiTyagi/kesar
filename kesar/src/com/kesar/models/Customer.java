package com.kesar.models;

public class Customer {
	private String Name;
	private String MobileNo;
	private String Email;
	private String Address;
	private String City;
	private String State;
	private String Password;
	private int pinCode;
	
	
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

	
	
	 
}
