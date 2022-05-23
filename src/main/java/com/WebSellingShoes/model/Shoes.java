package com.WebSellingShoes.model;

public class Shoes {
	private int ID;
	private String name;
	private String money;
	private String image;
	private String title;
	private String description;
	
	public Shoes() {
		
	}
	
	public Shoes(int iD, String name, String money, String image, String title, String description) {
		super();
		ID = iD;
		this.name = name;
		this.money = money;
		this.image = image;
		this.title = title;
		this.description = description;
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
	
	public String getMoney() {
		return money;
	}
	
	public void setMoney(String money) {
		this.money = money;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
