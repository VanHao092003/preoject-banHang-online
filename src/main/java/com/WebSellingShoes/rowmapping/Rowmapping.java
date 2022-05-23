package com.WebSellingShoes.rowmapping;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSellingShoes.model.Shoes;

public class Rowmapping implements RowMapper<Shoes>{

	@Override
	public Shoes mapRow(ResultSet rs, int rowNum) throws SQLException {
		Shoes shoes = new Shoes();
		shoes.setID(rs.getInt("ID"));
		shoes.setName(rs.getString("name"));
		shoes.setMoney(rs.getString("money"));
		shoes.setImage(rs.getString("image"));
		shoes.setTitle(rs.getString("title"));
		shoes.setDescription(rs.getNString("description"));
		return shoes;
	}
}
