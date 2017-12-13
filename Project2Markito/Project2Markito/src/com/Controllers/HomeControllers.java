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
import org.springframework.web.bind.annotation.RequestParam;

import com.Entities.*;
import com.Models.StaticModels;

@Controller
@Transactional
@RequestMapping("/")
public class HomeControllers {
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	@RequestMapping("")
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
		@SuppressWarnings("unchecked")
		List<Products> list2 = query.list();
		model.addAttribute("product", list2);
		model.addAttribute("soluong", slpr);
		model.addAttribute("page", pages);
		return "index";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(params="idCatalogs")
	public String show(ModelMap model,HttpServletRequest request, @RequestParam("idCatalogs") int idCatalogs) {
		int pages=1;
		String hql = "FROM Categories where idCategory=:idCatalogs";
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		query.setParameter("idCategory", idCatalogs);
		List<Categories> list = query.list();
		Categories ca=list.get(0);
		String malh=ca.getCategoryId();
		String hql1 = "FROM Products where categoryid='"+malh+"'";
		Query query1 = session.createQuery(hql1);
		List<Products> list1 = query1.list();
		int slpr = list1.size();
		query1.setFirstResult((pages - 1) * 9);
		query1.setMaxResults(9);
		List<Products> list2 = query1.list();
		model.addAttribute("product", list2);
		model.addAttribute("category", list);	
		model.addAttribute("soluong", slpr);
		model.addAttribute("page", pages);
		return "product";
	}	
//@ModelAttribute("listCatalogs")
//public List<Catalogs> getAllProducts(){
//	StaticModels catalogs = new StaticModels();
//	@SuppressWarnings("unused")
//	List<Catalogs> listCatalogs = catalogs.getCatalogs();
//	return listCatalogs;
//}
//@ModelAttribute("listSuppliers")
//public List<Suppliers> getAllSuppliers(){
//	StaticModels listSuppliers = new StaticModels();
//	@SuppressWarnings("unused")
//	List<Suppliers> listSupplier = listSuppliers.getSuppliers();
//	return listSupplier;
//}

}