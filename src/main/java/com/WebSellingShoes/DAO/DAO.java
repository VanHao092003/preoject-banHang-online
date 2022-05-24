package com.WebSellingShoes.DAO;

import java.util.List;

import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Shoes;

public interface DAO {
	public void contactNow(ContactNow contactNow);
	public List<Shoes> showShoes();
	public Shoes detail(int ID);
	public List<Shoes> showShoesHome();
	public Shoes showShoesMax();
}
