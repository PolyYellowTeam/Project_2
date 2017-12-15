package com.manageControllers;

import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Entities.Banners;
import com.Models.BannerModel;

@Controller
public class manageBanner {

	@Autowired
	SessionFactory sessionFactory;
	ServletContext context;

	@RequestMapping("/QLBAadd")
	public String QLBAform(ModelMap model) {
		model.addAttribute("BA", new Banners());
		return "admin_QLBAadd";
	}

	@RequestMapping(value = "saveBA", method = RequestMethod.POST)
	public String save(@ModelAttribute("BA") Banners banners, ModelMap model, BindingResult errors) {
		if(banners.getBannerName().trim().length()==0){
			errors.rejectValue("bannerName", "banners", "Vui lòng nhập tên banners !");
		}
		if(banners.getbanner_content().trim().length()==0){
			errors.rejectValue("banner_content", "banners", "Vui lòng nhập nội dung banners !");
		}
		if(banners.getSale_off().trim().length()==0){
			errors.rejectValue("sale_off", "banners", "Vui lòng nhập nội dung số % giảm giá !");
		}
		if(banners.getBannerImgUrl().trim().length()==0){
			errors.rejectValue("bannerImgUrl", "banners", "Vui lòng chọn ảnh cho banners !");
		}
		if(errors.hasErrors()){
			model.addAttribute("messageerrors", "Vui lòng sửa các lỗi sau !");
		}
		
		BannerModel baModel = new BannerModel();
		boolean result = baModel.saveBanner(banners);
		if (result) {
			return "redirect:/QLBAdata";
		} else {
			model.addAttribute("message", "Không thêm mới được banner !");
			return "admin_QLBAadd";
		}
	}

	@RequestMapping("/QLBAdata")
	public String QLBAdata(ModelMap model) {
		BannerModel baModel = new BannerModel();
		List<Banners> listBa = baModel.getDataBanner();
		model.addAttribute("listBa", listBa);
		return "admin_QLBAdata";
	}

	@RequestMapping(value = "QLBAupdate", params ="bannerId")
	public String update(@RequestParam("bannerId") int bannerId, Banners banners, ModelMap model) {
		BannerModel baModel = new BannerModel();
		banners = baModel.getbannerId(bannerId);
		List<Banners> listOne = baModel.getBanner(bannerId);
		Object listOneBa = listOne.get(0);
		model.addAttribute("BA", listOneBa);
		return "admin_QLBAupdate";
	}

	@RequestMapping(value = "updateBA", method = RequestMethod.POST)
	public String updatesave(@ModelAttribute("BA") Banners banners, ModelMap model, BindingResult errors) {
		
		if(banners.getBannerName().trim().length()==0){
			errors.rejectValue("bannerName", "banners", "Vui lòng nhập tên banners !");
		}
		if(banners.getbanner_content().trim().length()==0){
			errors.rejectValue("banner_content", "banners", "Vui lòng nhập nội dung banners !");
		}
		if(banners.getSale_off().trim().length()==0){
			errors.rejectValue("sale_off", "banners", "Vui lòng nhập nội dung số % giảm giá !");
		}
		if(banners.getBannerImgUrl().trim().length()==0){
			errors.rejectValue("bannerImgUrl", "banners", "Vui lòng chọn ảnh cho banners !");
		}
		if(errors.hasErrors()){
			model.addAttribute("messageerrors", "Vui lòng sửa các lỗi sau !");
		}
		
		BannerModel baModel = new BannerModel();
		boolean result = baModel.updateBanner(banners);
		if (result) {
			return "redirect:/QLBAdata";
		} else {
			model.addAttribute("message", "Cập nhập bị lỗi !");
			return "admin_QLBAupdate";
		}
	}

	@RequestMapping(value = "/deleteba/{bannerId}", method = RequestMethod.GET)
	public String delete(@PathVariable int bannerId) {
		BannerModel baModel = new BannerModel();
		Banners banners = baModel.getbannerId(bannerId);
		baModel.deleteBanner(banners);
		return "redirect:/QLBAdata";
	}

}
