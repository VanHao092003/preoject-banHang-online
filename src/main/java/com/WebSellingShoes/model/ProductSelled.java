package com.WebSellingShoes.model;

import java.util.Random;

public class ProductSelled {
	private int ID;
	private String quantity;
	private String price;
	private String name;
	
	public ProductSelled() {
		Random random = new Random();
    	this.ID = random.nextInt(899999) + 100001;
	}
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
