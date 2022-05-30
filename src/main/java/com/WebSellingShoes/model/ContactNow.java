package com.WebSellingShoes.model;

import java.util.Random;

public class ContactNow {
	private int ID;
	private String name;
	private String phone;
	private String email;
	private String massage;

	public ContactNow() {
		Random random = new Random();
    	this.ID = random.nextInt(899999) + 100001;
	}
	
	public ContactNow(String name, String phone, String email, String massage) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.massage = massage;
	}
	
	
	
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
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMassage() {
		return massage;
	}
	
	public void setMassage(String massage) {
		this.massage = massage;
	}
	
	
}
