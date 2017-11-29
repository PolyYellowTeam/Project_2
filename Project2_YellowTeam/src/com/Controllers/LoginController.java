package com.Controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.Entities.*;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap mm) {
		mm.put("acc", new Accounts());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "acc") Accounts acc, ModelMap mm, HttpSession session) {
		
		return "login";
	}
}
