package com.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = {"","/","/index"})
	public String index1() {
		return "user/index";
	}
	
	@RequestMapping(value = "products")
	public String products() {
		return "user/products";
	}
	
	@RequestMapping(value = "404")
	public String eror404() {
		return "user/404";
	}
	
	
	@RequestMapping(value = "checkout")
	public String checkout() {
		return "user/checkout";
	}
	
	@RequestMapping(value = "contact")
	public String contact() {
		return "user/contact";
	}
	
	@RequestMapping(value = "decor")
	public String decor() {
		return "user/decor";
	}
	
	@RequestMapping(value = "health")
	public String health() {
		return "user/health";
	}
	
	@RequestMapping(value = "mobile")
	public String mobile() {
		return "user/mobile";
	}
	
	@RequestMapping(value = "single")
	public String single() {
		return "user/single";
	}
	
}
