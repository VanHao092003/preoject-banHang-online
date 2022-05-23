package com.WebSellingShoes.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.WebSellingShoes.DAO.DAO;
import com.WebSellingShoes.model.ContactNow;
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

}
