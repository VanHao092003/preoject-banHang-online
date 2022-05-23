package com.WebSellingShoes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.service.Service;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	Service service;
	
	@RequestMapping(value = "/home")
	public String home(HttpServletRequest httpServletRequest) {
		List<Shoes> shoess = service.showShoes();
		httpServletRequest.setAttribute("shoessHome", shoess);
		return "home";
	}
	
	@RequestMapping(value = "/collection", method =  RequestMethod.GET)
	public String collection(HttpServletRequest httpServletRequest) {
		return "collection";
	}
	
	@RequestMapping(value =  "/contact", method = RequestMethod.GET)
	public String contact(HttpServletRequest httpServletRequest) {
		ContactNow contactNow = new ContactNow();
		httpServletRequest.setAttribute("contact", contactNow);
		return "contact";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String contact(HttpServletRequest httpServletRequest, @ModelAttribute("contact") ContactNow contactNow, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "contact";
		}
		service.contactNow(contactNow);
		return "redirect:/home";
	}
	
	@RequestMapping(value =  "/shoes")
	public String shoes(HttpServletRequest httpServletRequest) {
		List<Shoes> shoess = service.showShoes();
		httpServletRequest.setAttribute("shoess", shoess);
		return "shoes";
	}
	
	@RequestMapping(value = "/racing boots")
	public String racing_boots(HttpServletRequest httpServletRequest) {
		return "racing boots";
	}
	
	
	
}
