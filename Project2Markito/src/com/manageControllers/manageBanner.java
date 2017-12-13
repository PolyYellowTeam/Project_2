package com.manageControllers;

import java.util.List;

import javax.servlet.ServletContext;
import javax.websocket.server.PathParam;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

import com.Entities.Banners;
import com.Models.BannerModel;
import com.sun.java.swing.plaf.motif.resources.motif;
import com.sun.org.apache.bcel.internal.generic.NEW;

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

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("BA") Banners banners, ModelMap model) {
		BannerModel baModel = new BannerModel();
		boolean result = baModel.saveBanner(banners);
		if (result) {
			return "redirect:/QLBAdata";
		} else {
			model.addAttribute("message", "Không thêm mới được banner !");
			return "redirect:/QLBAadd";
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

	@RequestMapping(value = "QLBAupdate/updatesave", method = RequestMethod.POST)
	public String updatesave(@ModelAttribute("BA") Banners banners, ModelMap model) {
		BannerModel baModel = new BannerModel();
		boolean result = baModel.updateBanner(banners);
		if (result) {
			return "redirect:/QLBAdata";
		} else {
			model.addAttribute("message", "Cập nhập bị lỗi !");
			return "redirect:/QLBAupdate";
		}
	}

	@RequestMapping(value = "/deletaba/{bannerId}", method = RequestMethod.GET)
	public String delete(@PathVariable int bannerId) {
		BannerModel baModel = new BannerModel();
		Banners banners = baModel.getbannerId(bannerId);
		baModel.deleteBanner(banners);
		return "redirect:/QLBAdata";
	}

}
