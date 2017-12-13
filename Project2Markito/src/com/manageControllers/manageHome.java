package com.manageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class manageHome {
	@RequestMapping("testAdmin")
	public String getAdminHome() {
		return "admin_index";
	}
}
