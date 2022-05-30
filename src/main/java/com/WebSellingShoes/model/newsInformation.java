package com.WebSellingShoes.model;

import java.util.Random;

public class newsInformation {
	private int ID;
	private String email;
	
	public newsInformation() {
		Random random = new Random();
		this.ID = random.nextInt(899999) + 100001;
	}
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
