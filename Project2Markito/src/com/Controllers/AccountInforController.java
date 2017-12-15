package com.Controllers;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Entities.Accounts;
import com.Entities.Customers;
import com.Models.AccountInfor;
import com.Models.AccountsModel;

@Controller
public class AccountInforController {
	@RequestMapping(value = "account-infor", method = RequestMethod.GET)
	public String infor() {
		return "admin_account-infor";
	}

	@RequestMapping(value = "account-infor", method = RequestMethod.POST)
	public String saveInfor(ModelMap mm, HttpServletRequest request, String username, String cusname, String gender,
			String birth, String email, int phone, String address) {
		boolean cusgender;
		AccountsModel am = new AccountsModel();
		AccountInfor aci = new AccountInfor();
		Accounts account = am.getAcc(username);
		username = request.getParameter("username");
		cusname = request.getParameter("cusname");
		email = request.getParameter("email");
		phone = Integer.parseInt(request.getParameter("phone"));
		address = request.getParameter("address");
		if (gender.equalsIgnoreCase("true")) {
			cusgender = true;
		} else {
			cusgender = false;
		}
		Customers customer = new Customers(account, username, cusgender, email, phone, address);
		if (aci.addInfor(customer) == true) {
			mm.put("accmsg", "Save successfull");
			return "admin_account-infor";
		} else {
			mm.put("accmsg", "Error on saving profile");
			return "admin_account-infor";
		}
	}
}
