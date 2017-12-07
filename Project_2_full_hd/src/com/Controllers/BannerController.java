package com.Controllers;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Entities.Banners;
import com.Models.BannerModel;

@Controller
public class BannerController {
	
	
	
	@RequestMapping(value = {"","/","/index"}, method = RequestMethod.GET)
	public String banner(ModelMap model){
		BannerModel baModel = new BannerModel();
		
		List<Banners> listBa = baModel.getDataBanner();
		
		model.addAttribute("listBa", listBa);
		
		return "user/index";
	}
}
