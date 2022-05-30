package com.WebSellingShoes.model;

import java.util.Random;

public class Customer {
	private String ID;
	private String name;
	private String address;
	private String phone;
	private String ID_product;
	
	public void random() {
		Random random = new Random();
		 this.ID = random.nextInt(1000) + 99995 +"";
	}
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
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
	public String getID_product() {
		return ID_product;
	}
	public void setID_product(String iD_product) {
		ID_product = iD_product;
	}
	
	
}
