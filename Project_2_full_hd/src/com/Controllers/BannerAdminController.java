package com.Controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Entities.Banners;
import com.Models.BannerModel;

@Controller
public class BannerAdminController {

	@RequestMapping(value = {"admin/QLBA"}, method = RequestMethod.GET)
	public String banner(ModelMap model){
		BannerModel baModel = new BannerModel();
		
		List<Banners> listBa = baModel.getDataBanner();
		
		model.addAttribute("listBa", listBa);
		
		return "admin/QLBA";
	}
	
	
}
