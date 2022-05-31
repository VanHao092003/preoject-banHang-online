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
import com.WebSellingShoes.model.Customer;
import com.WebSellingShoes.model.ProductSelled;
import com.WebSellingShoes.model.Shoes;
import com.WebSellingShoes.model.newsInformation;
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

	@RequestMapping(value = "/collection", method = RequestMethod.GET)
	public String collection(HttpServletRequest httpServletRequest) {
		Boot bootmax = service.showBootMax();
		httpServletRequest.setAttribute("bootMax", bootmax);
		Shoes shoesMax = service.showShoesMax();
		httpServletRequest.setAttribute("shoesMax", shoesMax);
		return "collection";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(HttpServletRequest httpServletRequest) {
		ContactNow contactNow = new ContactNow();
		httpServletRequest.setAttribute("contact", contactNow);
		return "contact";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String contact(HttpServletRequest httpServletRequest, @ModelAttribute("contact") ContactNow contactNow,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "contact";
		}
		service.contactNow(contactNow);
		return "redirect:/home";
	}

	@RequestMapping(value = "/shoes")
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
		return "detailShoes";
	}

	@RequestMapping(value = "/shoes/thanh-toan/{ID}", method = RequestMethod.GET)
	public String thanh_toan(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {
		Shoes shoes = service.detail(ID);
		httpServletRequest.setAttribute("shoesThanh_toan", shoes);
		ProductSelled productSelled = new ProductSelled();
		productSelled.setName(shoes.getName());
		String quantity= httpServletRequest.getParameter("quantity_shoes");
		String sumMoney = SumMoney(shoes.getMoney(), quantity);
		httpServletRequest.setAttribute("sumMoney_shoes", sumMoney);
		productSelled.setPrice(sumMoney);
		productSelled.setQuantity(quantity);
		httpServletRequest.setAttribute("productSelled_shoes", productSelled);
		httpServletRequest.setAttribute("ID_product_shoes", productSelled.getID());
		service.addProductSelled(productSelled);
		
		Customer customer = new Customer();
		customer.random();
		String randomInt = customer.getID();
		httpServletRequest.setAttribute("randomInt_shoes", randomInt);
		return "thanh-toan-shoes";
	}

	@RequestMapping(value = "/boot")
	public String boot(HttpServletRequest httpServletRequest) {
		List<Boot> boots = service.showAllBoot();
		httpServletRequest.setAttribute("boots", boots);

		return "boot";
	}

	@RequestMapping(value = "/boot/detail/{ID}", method = RequestMethod.GET)
	public String showBootByID(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {
		Boot bootID = service.ShowBootByID(ID);
		httpServletRequest.setAttribute("bootID", bootID);
		return "detailBoot";
	}

	@RequestMapping(value = "/boot/detail/thanh-toan/{ID}", method = RequestMethod.GET)
	public String thanh_toan_boot(HttpServletRequest httpServletRequest, @PathVariable("ID") int ID) {

		Boot boot = service.ShowBootByID(ID);
		httpServletRequest.setAttribute("shoesThanh_toan_boot", boot);
		ProductSelled productSelled = new ProductSelled();
		productSelled.setName(boot.getName());
		String quantity= httpServletRequest.getParameter("quantity");
		String sumMoney = SumMoney(boot.getMoney(), quantity);
		httpServletRequest.setAttribute("sumMoney_boot", sumMoney);
		productSelled.setPrice(sumMoney);
		productSelled.setQuantity(quantity);
		httpServletRequest.setAttribute("productSelled", productSelled);
		httpServletRequest.setAttribute("ID_product", productSelled.getID());
		service.addProductSelled(productSelled);
		
		Customer customer = new Customer();
		customer.random();
		String randomInt = customer.getID();
		httpServletRequest.setAttribute("randomInt", randomInt);
		return "thanh-toan-boot";
	}

	@RequestMapping(value = "/search")
	public String search(HttpServletRequest httpServletRequest) {
		String txt = httpServletRequest.getParameter("search");
		List<Shoes> shoes = service.showBySearchShoes(txt);
		List<Boot> boots = service.showBySearchBoot(txt);
		httpServletRequest.setAttribute("shoesSeaerch", shoes);
		httpServletRequest.setAttribute("bootsSearch", boots);
		if (shoes.size() != 0 || boots.size() != 0) {
			return "search";
		} else {
			return "searchEmpty";
		}
	}

	@RequestMapping(value = "/dang-ky")
	public String dangKy(HttpServletRequest httpServletRequest) {
		String email = httpServletRequest.getParameter("newsInformation");
		newsInformation information = new newsInformation();
		information.setEmail(email);
		service.addNewsInformation(information);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/check_successful")
	public String checkOut(HttpServletRequest httpServletRequest) {
		Customer customer = new Customer();
		String DI_customer = httpServletRequest.getParameter("ID_customer");
		customer.setID(DI_customer);
		String name_customer =httpServletRequest.getParameter("name_customer");
		httpServletRequest.setAttribute("ID_customer", customer.getID());
		customer.setName(name_customer);
		String address_customer = httpServletRequest.getParameter("address_customer");
		customer.setAddress(address_customer); 
		String phone_customer = httpServletRequest.getParameter("phone_customer");
		customer.setPhone(phone_customer);	
		String ID_product = httpServletRequest.getParameter("ID_product");
		customer.setID_product(ID_product);
		service.addCustomer(customer);
		return"successful";
	}
	
	@RequestMapping(value="/check_successful-boot")
	public String checkOutBoot(HttpServletRequest httpServletRequest) {
		Customer customer = new Customer();
		String DI_customer = httpServletRequest.getParameter("ID_customer_shoes");
		customer.setID(DI_customer);
		String name_customer =httpServletRequest.getParameter("name_customer_shoes");
		customer.setName(name_customer);
		String address_customer = httpServletRequest.getParameter("address_customer_shoes");
		customer.setAddress(address_customer); 
		String phone_customer = httpServletRequest.getParameter("phone_customer_shoes");
		customer.setPhone(phone_customer);	
		String ID_product = httpServletRequest.getParameter("ID_product_shoes");
		customer.setID_product(ID_product);
		service.addCustomer(customer);
		return"successful";
	}
	
	public String SumMoney(String money, String quantity) {
		String[] array = money.split("\\.");
        String moneyInteger = "";
        for (String string : array) {
            moneyInteger += string;
        }
        int Quantity = Integer.parseInt(quantity);
        int Money = Integer.parseInt(moneyInteger);
        String sumMoney = (Money * Quantity) + "";
        int length = sumMoney.length();
        String SumMoney = "";
        for (int i = length; i >= 1; i -= 3) {
            if (i - 3 >= 1) {
                String SubString = sumMoney.substring(i - 3, i);
                SumMoney = "." + SubString + SumMoney;
            } else {
                SumMoney = sumMoney.substring(0, i) + SumMoney;
            }
        }
        return SumMoney;
	}
	
	@RequestMapping(value="/xem")
	public String xem(HttpServletRequest httpServletRequest) {
		return "successful";
	}
}
