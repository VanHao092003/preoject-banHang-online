package com.WebSellingShoes.rowmapping;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSellingShoes.model.Customer;

public class RowmappingCustomer implements RowMapper<Customer>{

	@Override
	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Customer customer = new Customer();
		customer.setID(rs.getString("ID"));
		customer.setName(rs.getString("name"));
		customer.setAddress(rs.getString("address"));
		customer.setPhone(rs.getString("phone"));
		customer.setID_product(rs.getString("ID_product"));
		return customer;
	}

}
