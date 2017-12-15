package com.Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Entities.*;
import com.Models.AdminCartModels;
import com.Models.BannerModel;
import com.Models.SEOKeywordModel;
import com.Models.StaticModels;


@Controller
@Transactional
@RequestMapping("/")
public class HomeControllers {
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	@RequestMapping(value= {"","index"})
	public String  home(ModelMap model,HttpServletRequest request) {	
		int pages = 1;
		if (request.getParameter("pages") != null) {
			pages = Integer.parseInt(request.getParameter("pages"));
		}
		List<Products> listProducts = null;		
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		String hql = "FROM Products";
		Query query = session.createQuery(hql);
		listProducts = query.list();
		int slpr = listProducts.size();
		query.setFirstResult((pages - 1) * 9);
		query.setMaxResults(9);
		List<Products> list2 = query.list();
		model.addAttribute("product", list2);
		model.addAttribute("soluong", slpr);
		model.addAttribute("page", pages);
		return "index";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value= {"/products"},params="idCatalogs")
	public String showpr(ModelMap model,HttpServletRequest request, @RequestParam("idCatalogs") String idCatalogs){	
		int pages = 1;
		if (request.getParameter("pages") != null) {
			pages = Integer.parseInt(request.getParameter("pages"));
		}
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		String hql = "FROM Categories where catalogs.catalogId=:idCatalogs";
		Query query = session.createQuery(hql);
		query.setParameter("idCatalogs",idCatalogs);
		List<Categories> list = query.list();
		model.addAttribute("category", list);		
		Categories ca=list.get(0);
		String idCategory=ca.getCategoryId();
		String hql1 = "FROM Products where categories.categoryId='"+idCategory+"'";
		Query query1 = session.createQuery(hql1);
		List<Products> list1 = query1.list();
		int slpr = list1.size();
		query1.setFirstResult((pages - 1) * 9);
		query1.setMaxResults(9);
		List<Products> list2 = query1.list();
		model.addAttribute("product", list2);
		model.addAttribute("category", list);
		model.addAttribute("idCatalogs",idCatalogs);
		model.addAttribute("idCategory",idCategory);
		model.addAttribute("soluong", slpr);
		model.addAttribute("page", pages);
		return "product";
	}

	@ModelAttribute("listBanners")
	public List<Banners> getBanners() {
		BannerModel baModel = new BannerModel();
		List<Banners> listBanners = baModel.getDataBanner();
		return listBanners;
	}

}