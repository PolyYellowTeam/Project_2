package com.Controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@RequestMapping(value = "admin/create-account", method = RequestMethod.GET)
	public String createAccount() {
		return "admin/create-account";
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

	@RequestMapping(value = "admin/account", method = RequestMethod.GET)
	public String account() {
		return "admin/account";
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(String username) {
		return "admin/update";
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
				session.setAttribute("role", "admin");
				return "admin/index";
			} else {
				session.setAttribute("role", "user");
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

	@RequestMapping(value = "updateAccount", method = RequestMethod.POST)
	public String updateAccount(String username, String password, String status, ModelMap mm,
			HttpServletRequest request, HttpSession session) {
		AccountsModel change = new AccountsModel();
		username = request.getParameter("username");
		password = request.getParameter("password");
		status = request.getParameter("status");
		System.out.println("update" + password);
		boolean newstt;
		boolean role;
		if (status.equals("true")) {
			newstt = true;
		} else {
			newstt = false;
		}
		if (change.isAdmin2(username) == true) {
			role = true;
		} else {
			role = false;
		}
		Accounts account = new Accounts(username, password, role, newstt);
		if (change.update(account) == true) {
			return "admin/account";
		} else {
			System.out.println("Fail to update");
			return "admin/account";
		}
	}

	@RequestMapping(value = "admin/createacc", method = RequestMethod.POST)
	public String createAccount(String username, String password, String role, String status, ModelMap mm,
			HttpServletRequest request) {
		username = request.getParameter("username");
		password = request.getParameter("password");
		role = request.getParameter("role");
		status = request.getParameter("status");
		boolean accrole, accstatus;
		if (role.equalsIgnoreCase("true")) {
			accrole = true;
		} else {
			accrole = false;
		}
		if (status.equalsIgnoreCase("true")) {
			accstatus = true;
		} else {
			accstatus = false;
		}
		Accounts account = new Accounts(username, password, accrole, accstatus);
		AccountsModel createacc = new AccountsModel();
		if (createacc.create(account) == true) {
			return "admin/account";
		} else {
			mm.put("createmsg", "Lỗi tạo tài khoản");
			return "admin/create-account";
		}
	}
}
