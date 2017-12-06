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
public class AccountsController {

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String index() {
		return "login-page";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}

	@RequestMapping(value = "changepassword", method = RequestMethod.GET)
	public String changepassword() {
		return "changepassword";
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "login-page";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String checklogin(String username, String password, ModelMap mm, HttpServletRequest request,
			HttpSession session) {
		username = request.getParameter("username");
		password = request.getParameter("password");
		AccountsModel check = new AccountsModel();
		if (check.login(username, password) == true) {
			if (check.isAdmin(username, password) == true) {
				session.setAttribute("user", username);
				return "admin-page";
			} else {
				session.setAttribute("user", username);
				return "user/index";
			}
		} else {
			mm.put("loginmsg", "Fail to login!");
			return "login-page";
		}
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(String username, String password, String repassword, ModelMap mm,
			HttpServletRequest request) {
		username = request.getParameter("username");
		password = request.getParameter("password");
		repassword = request.getParameter("re-password");
		if (password.equals(repassword)) {
			AccountsModel register = new AccountsModel();
			Accounts account = new Accounts(username, repassword, false, true);
			if (register.register(account) == true) {
				mm.put("loginmsg", "Register successfully!");
				return "login-page";
			} else {
				mm.put("registermsg", "Username has been taken!");
				return "register";
			}
		} else {
			mm.put("registermsg", "Password does not map!");
			return "register";
		}
		// return "register";
	}

	@RequestMapping(value = "changepassword", method = RequestMethod.POST)
	public String changepassword(String password, String repassword, ModelMap mm, HttpServletRequest request,
			HttpSession session) {
		password = request.getParameter("password");
		repassword = request.getParameter("re-password");
		if (password.equals(repassword)) {
			String username = session.getAttribute("user").toString();
			AccountsModel change = new AccountsModel();
			Accounts account = new Accounts(username, repassword, false, true);
			if (change.changepassword(account) == true) {
				session.removeAttribute("user");
				mm.put("loginmsg", "Password changed! Please re-login");
				return "login-page";
			} else {
				mm.put("changepasswordmsg", "Something go wrong, please try again later!");
				return "changepassword";
			}
		} else {
			mm.put("changepasswordmsg", "Password does not match or you are not login yet!");
			return "changepassword";
		}
	}
}
