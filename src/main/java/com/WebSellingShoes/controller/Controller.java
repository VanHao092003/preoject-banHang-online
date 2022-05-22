package com.WebSellingShoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
public class Controller {
	
	@RequestMapping(value = "/home")
	public String home(HttpServletRequest httpServletRequest) {
		return "home";
	}
	
	@RequestMapping(value = "/collection", method =  RequestMethod.GET)
	public String collection(HttpServletRequest httpServletRequest) {
		return "collection";
	}
	
	
	@RequestMapping(value =  "/contact")
	public String contact(HttpServletRequest httpServletRequest) {
		return "contact";
	}
	
	
	@RequestMapping(value =  "/shoes")
	public String shoes(HttpServletRequest httpServletRequest) {
		return "shoes";
	}
	
	@RequestMapping(value = "/racing boots")
	public String racing_boots(HttpServletRequest httpServletRequest) {
		return "racing boots";
	}
}
