package com.WebSellingShoes.DAOImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.WebSellingShoes.DAO.DAO;
import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.rowmapping.Rowmapping;

@Repository
public class DAOImplemention implements DAO{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public void contactNow(ContactNow contactNow) {
		String sql = "insert into contactNow (ID,name, phone, email, message) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, contactNow.getID(), contactNow.getName(), contactNow.getPhone(), contactNow.getEmail(), contactNow.getMassage());
	}
	
	public List<Shoes> showShoes() {
		String sql = "select * from shoes";
		return jdbcTemplate.query(sql, new Rowmapping());
	}

	@Override
	public Shoes detail(int ID) {
		String sql = "select * from shoes where ID = " + ID;
		return (Shoes) jdbcTemplate.query(sql, new Rowmapping());
	}
	
	
	
}
