package com.WebSellingShoes.rowmapping;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSellingShoes.model.Boot;

public class RowmappingBoot implements RowMapper<Boot>{

	@Override
	public Boot mapRow(ResultSet rs, int rowNum) throws SQLException {
		Boot boot = new Boot();
		boot.setID(rs.getInt("ID"));
		boot.setName(rs.getString("name"));
		boot.setMoney(rs.getString("money"));
		boot.setImage(rs.getString("image"));
		boot.setTitle(rs.getString("title"));
		boot.setDiscription(rs.getString("discription"));
		return boot;
	}

}
