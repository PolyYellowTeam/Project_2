package com.manageControllers;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entities.*;
import com.Models.StaticModels;

@Controller
@Transactional
public class manageCatalogs {
//	@Autowired
//	SessionFactory factory;
//	@Autowired
//	ServletContext context;	
//	HttpServletRequest request;
//	@RequestMapping("test")
//	public String adshow(ModelMap model,HttpServletRequest request){	
//		StaticModels catalogs = new StaticModels();
//		List<Catalogs> listCatalogs = catalogs.getCatalogs();
//		model.addAttribute("listCatalogs", listCatalogs);
//		return "admin/admin_catalogs";
//	}
	@RequestMapping("minhmv")
	public String getTest() {
		return "admin_index";
	}

}
