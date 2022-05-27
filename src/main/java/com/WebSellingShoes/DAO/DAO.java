package com.WebSellingShoes.DAO;

import java.util.List;

import com.WebSellingShoes.model.Boot;
import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Customer;
import com.WebSellingShoes.model.ProductSelled;
import com.WebSellingShoes.model.Shoes;

public interface DAO {
	public void contactNow(ContactNow contactNow);
	public List<Shoes> showShoes();
	public Shoes detail(int ID);
	public List<Shoes> showShoesHome();
	public Shoes showShoesMin();
	public void addCustomer(Customer customer);
	public void addProductSelled(ProductSelled productSelled);
	public List<Boot> showAllBoot();
	public Boot showBootMin();
	public Boot showBootByID(int ID);
	public Boot showBootMax();
	public Shoes showShoesMax();
}
