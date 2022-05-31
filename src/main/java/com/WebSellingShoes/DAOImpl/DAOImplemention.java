package com.WebSellingShoes.DAOImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.WebSellingShoes.DAO.DAO;
import com.WebSellingShoes.model.Boot;
import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Customer;
import com.WebSellingShoes.model.ProductSelled;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.model.newsInformation;
import com.WebSellingShoes.rowmapping.Rowmapping;
import com.WebSellingShoes.rowmapping.RowmappingBoot;
import com.WebSellingShoes.rowmapping.RowmappingCustomer;
import com.WebSellingShoes.rowmapping.RowmappingProductSelled;

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
		return jdbcTemplate.queryForObject(sql, new Rowmapping());
	}

	@Override
	public List<Shoes> showShoesHome() {
		String sql = "select * from shoes where ID < 4 and ID > 1";
		return jdbcTemplate.query(sql,new Rowmapping());
	}

	@Override
	public Shoes showShoesMin() {
		String sql = "select * from shoes where ID = (select min(ID) from shoes)";
		Shoes shoes = jdbcTemplate.queryForObject(sql, new Rowmapping());
		return shoes;
	}

	@Override
	public void addCustomer(Customer customer) {
		String sql = "insert into customer(ID, name, address, phone, ID_product) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, customer.getID(), customer.getName(), customer.getAddress(), customer.getPhone(), customer.getID_product());
	}

	@Override
	public void addProductSelled(ProductSelled productSelled) {
		String sql = "insert into productSelled(ID, quantity, price, name) values (?, ?, ?, ?)";
		jdbcTemplate.update(sql, productSelled.getID(), productSelled.getQuantity(), productSelled.getPrice(), productSelled.getName());
	}

	@Override
	public List<Boot> showAllBoot() {
		String sql = "select * from boot";
		return jdbcTemplate.query(sql, new RowmappingBoot());
	}

	@Override
	public Boot showBootMin() {
		String sql = "select * from boot where ID = (select min(ID) from boot)";
		return jdbcTemplate.queryForObject(sql, new RowmappingBoot());
	}

	@Override
	public Boot showBootByID(int ID) {
		String sql = "select * from boot where ID = " + ID;
		return jdbcTemplate.queryForObject(sql, new RowmappingBoot());
	}

	@Override
	public Boot showBootMax() {
		String sql = "select * from boot where ID = (select max(ID) from boot)";
		return jdbcTemplate.queryForObject(sql, new RowmappingBoot());
	}

	@Override
	public Shoes showShoesMax() {
		String sql = "select * from shoes where ID = (select max(ID) from shoes)";
		return jdbcTemplate.queryForObject(sql, new Rowmapping());
	}

	@Override
	public List<Shoes> showBySearchShoes(String search) {
		String sql = "select * from shoes where name like '%" + search + "%'";
		return jdbcTemplate.query(sql, new Rowmapping());
	}

	@Override
	public List<Boot> showBySearchBoot(String search) {
		String sql = "select * from boot where name like '%" + search + "%'";
		return jdbcTemplate.query(sql, new RowmappingBoot());
	}

	@Override
	public void addNewsInformation(newsInformation information) {
		String sql = "insert into newsInformation (ID, email) values(?, ?)";
		jdbcTemplate.update(sql, information.getID(), information.getEmail());
	}

	@Override
	public ProductSelled showProdductSelled(int ID) {
		String sql = "select * from productSelled where ID = " + ID;
		return jdbcTemplate.queryForObject(sql, new RowmappingProductSelled());
	}

	@Override
	public Customer showCustomer(int ID) {
		String sql = "select * from customer where ID_product = " + ID;
		return jdbcTemplate.queryForObject(sql, new RowmappingCustomer());
	}
	
	
	
	
}
