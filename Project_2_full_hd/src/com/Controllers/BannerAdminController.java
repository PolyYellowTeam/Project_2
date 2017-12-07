package com.Controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Entities.Banners;
import com.Models.BannerModel;

@Controller
public class BannerAdminController {

	@RequestMapping(value = {"admin/QLBAdata"}, method = RequestMethod.GET)
	public String QLBAdata(ModelMap model){
		BannerModel baModel = new BannerModel();
		
		List<Banners> listBa = baModel.getDataBanner();
		
		model.addAttribute("listBa", listBa);
		
		return "admin/QLBAdata";
	}
	
	@RequestMapping(value = {"admin/QLBAadd"}, method = RequestMethod.GET)
	public String QLBAadd(ModelMap model){
		model.addAttribute("banners", new Banners());
		return "admin/QLBAadd";
	}
	
	@RequestMapping(value = {"admin/QLBAadd"}, method = RequestMethod.POST)
	public String QLBAadd(ModelMap model, @ModelAttribute("banners") Banners banners,
			@RequestParam("bannerImgUrl") MultipartFile bannerImgUrl){
		
		return "admin/QLBAadd";
	}
	
	
	@RequestMapping(value = {"admin/QLBAupdate"}, method = RequestMethod.GET)
	public String QLBAupdate(ModelMap model){
		
		
		return "admin/QLBAupdate";
	}
	
	
}
