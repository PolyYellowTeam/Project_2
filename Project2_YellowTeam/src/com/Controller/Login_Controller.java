package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login_Controller {

	@RequestMapping("admin-login")
	public String login() {
		return "login/admin-login";
	}
	
	@RequestMapping("admintest")
	public String admintest() {
		return "admin/admintest";
	}

}