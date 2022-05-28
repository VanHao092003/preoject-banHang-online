package com.WebSellingShoes.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.WebSellingShoes.DAO.DAO;
import com.WebSellingShoes.model.Boot;
import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Customer;
import com.WebSellingShoes.model.ProductSelled;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.service.Service;

@org.springframework.stereotype.Service
public class ServiceImplemention implements Service{
	
	@Autowired
	DAO dao;

	@Override
	public void contactNow(ContactNow contactNow) {
		dao.contactNow(contactNow);
	}

	@Override
	public List<Shoes> showShoes() {
		return dao.showShoes();
	}

	@Override
	public Shoes detail(int ID) {
		return dao.detail(ID);
	}

	@Override
	public List<Shoes> showShoesHome() {
		return dao.showShoesHome();
	}

	@Override
	public Shoes showShoesMin() {
		return dao.showShoesMin();
	}

	@Override
	public void addCustomer(Customer customer) {
		dao.addCustomer(customer);
	}

	@Override
	public void addProductSelled(ProductSelled productSelled) {
		dao.addProductSelled(productSelled);
	}

	@Override
	public List<Boot> showAllBoot() {
		return dao.showAllBoot();
	}

	@Override
	public Boot showBootMin() {
		return dao.showBootMin();
	}

	@Override
	public Boot ShowBootByID(int ID) {
		return dao.showBootByID(ID);
	}

	@Override
	public Boot showBootMax() {
		return dao.showBootMax();
	}

	@Override
	public Shoes showShoesMax() {
		// TODO Auto-generated method stub
		return dao.showShoesMax();
	}

	@Override
	public List<Shoes> showBySearchShoes(String search) {
		// TODO Auto-generated method stub
		return dao.showBySearchShoes(search);
	}

	@Override
	public List<Boot> showBySearchBoot(String search) {
		// TODO Auto-generated method stub
		return dao.showBySearchBoot(search);
	}

}
