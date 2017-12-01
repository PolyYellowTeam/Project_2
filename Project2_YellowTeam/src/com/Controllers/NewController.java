package com.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("new")
public class NewController {
	
	@RequestMapping(value="new-controller",method = RequestMethod.GET)
	public String index() {
		return "admin/home";
	}
}
