package com.Controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entities.SeoKeywords;
import com.Models.SEOKeywordModel;

@Controller
public class SEOKeywordController {
	@RequestMapping(value = "user-layout")
	public String banner(ModelMap model){
		SEOKeywordModel seoModel = new SEOKeywordModel();
		List<SeoKeywords> listSeo = seoModel.getDataSeoKeywords();
		model.addAttribute("listSeo", listSeo);
		return "user-layout";
	}
}
