package com.WebSellingShoes.service;

import java.util.List;

import com.WebSellingShoes.model.Boot;
import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Customer;
import com.WebSellingShoes.model.ProductSelled;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.model.newsInformation;

public interface Service {
	public void contactNow(ContactNow contactNow);
	public List<Shoes> showShoes();
	public Shoes detail(int ID);
	public List<Shoes> showShoesHome();
	public Shoes showShoesMin();
	public void addCustomer(Customer customer);
	public void addProductSelled(ProductSelled productSelled);
	public List<Boot> showAllBoot();
	public Boot showBootMin();
	public Boot ShowBootByID(int ID);
	public Boot showBootMax();
	public Shoes showShoesMax();
	public List<Shoes> showBySearchShoes(String search);
	public List<Boot> showBySearchBoot(String search);
	public void addNewsInformation(newsInformation information);

}
