package com.WebSellingShoes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.WebSellingShoes.model.Boot;
import com.WebSellingShoes.model.ContactNow;
import com.WebSellingShoes.model.ProductSelled;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.service.Service;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	Service service;
	
	@RequestMapping(value = "/home")
	public String home(HttpServletRequest httpServletRequest) {
		Shoes shoesMin = service.showShoesMin();
		httpServletRequest.setAttribute("shoesMin", shoesMin);
		List<Shoes> shoesHome = service.showShoesHome();
		httpServletRequest.setAttribute("shoesHome", shoesHome);
		List<Shoes> shoess = service.showShoes();
		httpServletRequest.setAttribute("shoessHome", shoess);
		List<Boot> boots = service.showAllBoot();
		httpServletRequest.setAttribute("bootsHome", boots);
		Boot boot = service.showBootMin();
		httpServletRequest.setAttribute("bootMin", boot);
		Boot bootmax = service.showBootMax();
		httpServletRequest.setAttribute("bootMax", bootmax);
		Shoes shoesMax = service.showShoesMax();
		httpServletRequest.setAttribute("shoesMax", shoesMax);
		return "home";
	}
	
	@RequestMapping(value = "/collection", method =  RequestMethod.GET)
	public String collection(HttpServletRequest httpServletRequest) {
		Boot bootmax = service.showBootMax();
		httpServletRequest.setAttribute("bootMax", bootmax);
		Shoes shoesMax = service.showShoesMax();
		httpServletRequest.setAttribute("shoesMax", shoesMax);
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
	
	@RequestMapping(value = "/boots")
	public String racing_boots(HttpServletRequest httpServletRequest) {
		List<Boot> boots = service.showAllBoot();
		httpServletRequest.setAttribute("boots", boots);
		Boot boot = service.showBootMin();
		httpServletRequest.setAttribute("boot", boot);
		
		return "racing boots";
	}
	
	@RequestMapping(value = "/shoes/{ID}", method = RequestMethod.GET)
	public String detail(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {
		Shoes shoes = service.detail(ID);
		httpServletRequest.setAttribute("shoesDetail", shoes);
		ProductSelled productSelled = new ProductSelled();
		httpServletRequest.setAttribute("producSelled", productSelled);
		return "detailShoes";
	}
	
	@RequestMapping(value="/shoes/thanh-toan/{ID}", method = RequestMethod.GET)
	public String  thanh_toan(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {
		
		Shoes shoes = service.detail(ID);
		httpServletRequest.setAttribute("shoesThanh_toan", shoes);
		return "thanh-toan-shoes";
	}
	
	@RequestMapping(value="/boot")
		public String boot(HttpServletRequest httpServletRequest) {
			List<Boot> boots = service.showAllBoot();
			httpServletRequest.setAttribute("boots", boots);
			return "boot";
		}
	
	@RequestMapping(value="/boot/detail/{ID}")
	public String showBootByID(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {
		Boot bootID = service.ShowBootByID(ID);
		httpServletRequest.setAttribute("bootID", bootID);
		ProductSelled productSelled = new ProductSelled();
		httpServletRequest.setAttribute("producSelled", productSelled);
		return "detailBoot";
	}
	
	@RequestMapping(value="/boot/detail/thanh-toan/{ID}", method = RequestMethod.GET)
	public String  thanh_toan_boot(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {
		
		Boot boot = service.ShowBootByID(ID);
		httpServletRequest.setAttribute("shoesThanh_toan_boot", boot);
		return "thanh-toan-boot";
	}
	
	@RequestMapping(value="/search")
	public String search(HttpServletRequest httpServletRequest) {
		String txt = httpServletRequest.getParameter("search");
		List<Shoes> shoes = service.showBySearchShoes(txt);
		List<Boot> boots = service.showBySearchBoot(txt);
		httpServletRequest.setAttribute("shoesSeaerch", boots);
		httpServletRequest.setAttribute("bootsSearch", shoes);
		return "search";
	}
}
