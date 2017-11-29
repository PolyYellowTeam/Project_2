package com.Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.Entities.*;
import com.Models.AccountsModel;

@Controller
@RequestMapping("account")
public class AccountsController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "login-page";
	}
	
	@RequestMapping(value="login",method = RequestMethod.POST)
	public String checklogin(String username, String password, ModelMap mm,HttpServletRequest request) {
		username = request.getParameter("username");
		password = request.getParameter("password");
		AccountsModel check = new AccountsModel();
		if(check.login(username, password) == true) {
			if(check.isAdmin(username, password) == true) {
				return "admin-page";
			}else {
				return "index";
			}
		}else {
			mm.put("loginmsg", "Fail to login!");
			return "login-page";
		}
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value = "forgot", method = RequestMethod.GET)
	public String forgot() {
		return "forgot";
	}
}
