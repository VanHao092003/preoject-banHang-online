package com.WebSellingShoes.configuration;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@org.springframework.context.annotation.Configuration
@ComponentScan(basePackages = "com.WebSellingShoes")
@EnableWebMvc
public class Configuration implements WebMvcConfigurer {

	@Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		internalResourceViewResolver.setPrefix("/WEB-INF/views/");
		internalResourceViewResolver.setSuffix(".jsp");
		return internalResourceViewResolver;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/views/**").addResourceLocations("/WEB-INF/views/");
	}

	
//	  @Bean 
//	  public DataSource dataSourceShoes() { DriverManagerDataSource
//	  dataSource = new DriverManagerDataSource();
//	  dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//	  dataSource.setUrl("jdbc:mysql://localhost:3306/shoes");
//	  dataSource.setUsername("root"); dataSource.setPassword("24002948"); return
//	  dataSource; 
//	  }
//	 
//	@Bean
//	public JdbcTemplate jdbcTemplateShoes() {
//		return new JdbcTemplate(dataSourceShoes());
//	}

	@Bean
	public DataSource dataSourceContactNew() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/banHang");
		dataSource.setUsername("root");
		dataSource.setPassword("24002948");
		return dataSource;
	}

	@Bean
	public JdbcTemplate jdbcTemplateContactnew() {
		return new JdbcTemplate(dataSourceContactNew());
	}
	
	@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
		commonsMultipartResolver.setMaxUploadSize(-1);
		return commonsMultipartResolver;
	}

}
