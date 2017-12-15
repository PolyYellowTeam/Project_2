package com.manageControllers;

import java.util.List;

import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import com.Entities.Products;

@Controller
@Transactional
public class manageProducts {
	@Autowired
	SessionFactory sessionFactory;
	HttpServletRequest request;	
	@RequestMapping("mngproducts")
	public String getProducts(ModelMap model,HttpServletRequest request) {
		int pages = 1;
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		if (request.getParameter("pages") != null) {
			pages = Integer.parseInt(request.getParameter("pages"));
		}		
		String hqlpr = "FROM Products";			
		Query querypr= session.createQuery(hqlpr);
		@SuppressWarnings("unchecked")
		List<Products> listproduct = querypr.list();
		int slpr = listproduct.size();
		querypr.setFirstResult((pages - 1) * 5);
		querypr.setMaxResults(5);
		@SuppressWarnings("unchecked")
		List<Products> list = querypr.list();
		model.addAttribute("listProducts", list);
		model.addAttribute("numbers", slpr);
		model.addAttribute("pages", pages);
		return "admin_products";
	}
}
