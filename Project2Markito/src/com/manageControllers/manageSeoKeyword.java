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

import com.Entities.SeoKeywords;
import com.Models.SEOKeywordModel;

@Controller
public class manageSeoKeyword {

	@Autowired
	SessionFactory sessionFactory;
	ServletContext context;

	@RequestMapping("/QLSKadd")
	public String QLSKform(ModelMap model) {
		model.addAttribute("SEO", new SeoKeywords());
		return "admin_QLSKadd";
	}

	@RequestMapping(value = "saveSeo", method = RequestMethod.POST)
	public String save(@ModelAttribute("SEO") SeoKeywords seokey, ModelMap model, BindingResult errors) {
		
		if(seokey.getKeyword().trim().length()==0){
			errors.rejectValue("keyword", "seokey", "Vui lòng nhập nội dung keyword !");
		}
		
		if(errors.hasErrors()){
			model.addAttribute("messageerrors", "Vui lòng sửa các lỗi sau !");
		}
		
		SEOKeywordModel seoModel = new SEOKeywordModel();
		boolean result = seoModel.saveSeoKeywords(seokey);
		if (result) {
			return "redirect:/QLSKdata";
		} else {
			model.addAttribute("message", "Không thêm mới được keyword !");
			return "admin_QLSKadd";
		}
	}

	@RequestMapping("/QLSKdata")
	public String QLSKdata(ModelMap model) {
		SEOKeywordModel seoModel = new SEOKeywordModel();
		List<SeoKeywords> listSeo = seoModel.getDataSeoKeywords();
		model.addAttribute("listSeo", listSeo);
		return "admin_QLSKdata";
	}

	@RequestMapping(value = "QLSKupdate", params = "seoId")
	public String update(@RequestParam("seoId") int seoId, SeoKeywords seoKeywords, ModelMap model) {
		SEOKeywordModel seoModel = new SEOKeywordModel();
		seoKeywords = seoModel.getSEOId(seoId);
		List<SeoKeywords> listOne = seoModel.getSeokey(seoId);
		Object listOneKey = listOne.get(0);
		model.addAttribute("SEO", listOneKey);
		return "admin_QLSKupdate";
	}

	@RequestMapping(value = "updateSEO", method = RequestMethod.POST)
	public String updatesave(@ModelAttribute("SEO") SeoKeywords seoKeywords, ModelMap model, BindingResult errors) {
		
		if(seoKeywords.getKeyword().trim().length()==0){
			errors.rejectValue("keyword", "seokey", "Vui lòng nhập nội dung keyword !");
		}
		
		if(errors.hasErrors()){
			model.addAttribute("messageerrors", "Vui lòng sửa các lỗi sau !");
		}
		
		SEOKeywordModel seoModel = new SEOKeywordModel();
		boolean result = seoModel.updateSeokey(seoKeywords);
		if (result) {
			return "redirect:/QLSKdata";
		} else {
			model.addAttribute("message", "Cập nhập thất bại !");
			return "admin_QLSKupdate";
		}
	}
	
	@RequestMapping(value = "/deletaseo/{seoId}", method = RequestMethod.GET)
	public String delete(@PathVariable int seoId) {
		SEOKeywordModel seoModel = new SEOKeywordModel();
		SeoKeywords seo = seoModel.getSEOId(seoId);
		seoModel.deleteSeokey(seo);
		return "redirect:/QLSKdata";
	}

}
