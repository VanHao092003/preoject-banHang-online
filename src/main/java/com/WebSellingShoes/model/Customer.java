package com.WebSellingShoes.model;

public class Customer {
	private int ID;
	private String name;
	private String address;
	private String phone;
	private int ID_product;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getID_product() {
		return ID_product;
	}
	public void setID_product(int iD_product) {
		ID_product = iD_product;
	}
	
	
}
