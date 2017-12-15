package com.Controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.Entities.*;
import com.Models.AccountInfor;
import com.Models.AccountsModel;

@Controller
public class AccountsController {

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String index() {
		return "login-page";
	}

	@RequestMapping(value = "create-account", method = RequestMethod.GET)
	public String createAccount() {
		return "admin_create-account";
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
		session.invalidate();
		System.gc();
		return "login-page";
	}

	@RequestMapping(value = "admin-login", method = RequestMethod.GET)
	public String adminlogin(HttpSession session) {
		return "admin-login";
	}

	@RequestMapping(value = "account", method = RequestMethod.GET)
	public String account() {
		return "account";
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(String username) {
		return "update";
	}

	@RequestMapping(value = "admin-login", method = RequestMethod.POST)
	public String checkloginadmin(String username, String password, ModelMap mm, HttpServletRequest request,
			HttpSession session) {
		if(request.getAttribute("role") == null) {
			username = request.getParameter("username");
			password = request.getParameter("password");
			AccountsModel check = new AccountsModel();
			
			if (check.adminlogin(username, password) == true) {
				if (check.isAdmin(username, password) == true) {
					session.setAttribute("user", username);
					session.setAttribute("role", "admin");
					return "admin_index";
				} else {
					mm.put("loginmsg", "Fail to login!");
					return "admin-login";
				}
			} else {
				mm.put("loginmsg", "Fail to login!");
				return "admin-login";
			}
		}else {
			return "admin_index";
		}
		
	}
	
	@RequestMapping(value = "admin-index", method = RequestMethod.GET)
	public String adminindex(HttpServletRequest request) {
		return "admin_index";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String checklogin(String username, String password, ModelMap mm, HttpServletRequest request,
			HttpSession session) {
		username = request.getParameter("username");
		password = request.getParameter("password");
		AccountsModel check = new AccountsModel();
		if (check.userlogin(username, password) == true) {
				session.setAttribute("role", "user");
				session.setAttribute("user", username);
				return "redirect:/index";
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
			Accounts account = new Accounts(username, repassword,0, true);
			AccountInfor ai = new AccountInfor();
			if (register.register(account) == true) {
				ai.savenew(account.getUsername());
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
			Accounts account = new Accounts(username, repassword, 0, true);
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
//		int role;
		if (status.equals("true")) {
			newstt = true;
		} else {
			newstt = false;
		}
//		if (change.checkRoles(username) != -1) {
//			role = change.checkRoles(username);
//		} else {
//			role = -1;
//		}
		Accounts oldacc = new AccountsModel().getAcc(username);
		Accounts account = new Accounts(username, password, oldacc.isRoles(), newstt);
		if (change.update(account) == true) {
			return "admin/admin_account";
		} else {
			System.out.println("Fail to update");
			return "admin/admin_account";
		}
	}

	@RequestMapping(value = "createacc", method = RequestMethod.POST)
	public String createAccount(String username, String password, String role, String status, ModelMap mm,
			HttpServletRequest request) {
		username = request.getParameter("username");
		password = request.getParameter("password");
		role = request.getParameter("role");
		status = request.getParameter("status");
		boolean accstatus;
		if (status.equalsIgnoreCase("true")) {
			accstatus = true;
		} else {
			accstatus = false;
		}
		Accounts account = new Accounts(username, password, Integer.parseInt(role), accstatus);
		AccountsModel createacc = new AccountsModel();
		if (createacc.create(account) == true) {
			return "admin/admin_account";
		} else {
			mm.put("createmsg", "Lỗi tạo tài khoản");
			return "admin/admin_create-account";
		}
	}
}