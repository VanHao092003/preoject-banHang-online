package com.WebSellingShoes.rowmapping;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSellingShoes.model.ProductSelled;

public class RowmappingProductSelled implements RowMapper<ProductSelled>{

	@Override
	public ProductSelled mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductSelled productSelled = new ProductSelled();
		productSelled.setID(rs.getInt("ID"));
		productSelled.setQuantity(rs.getString("quantity"));
		productSelled.setPrice(rs.getString("price"));
		productSelled.setName(rs.getString("name"));
		return productSelled;
	}
	
}
