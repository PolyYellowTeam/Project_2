package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login_Controller {

	@RequestMapping("admin")
	public String login() {
		return "admin/admin";
	}
	
	@RequestMapping("admintest")
	public String admintest() {
		return "admin/admintest";
	}

}
