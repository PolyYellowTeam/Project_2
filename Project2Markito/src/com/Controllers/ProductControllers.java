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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.Entities.*;


@Controller
@Transactional
public class ProductControllers {
	@Autowired
	SessionFactory sessionFactory;
	HttpServletRequest request;	

	@RequestMapping(value= {"/products"},params="idCatalogs")
	public String showpr(ModelMap model,HttpServletRequest request, @RequestParam("idCatalogs") String idCatalogs){	
		int pages = 1;
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		String hql = "FROM Categories where catalogs.catalogId=:idCatalogs";
		Query query = session.createQuery(hql);
		query.setParameter("idCatalogs",idCatalogs);
		@SuppressWarnings("unchecked")
		List<Categories> list = query.list();
		model.addAttribute("category", list);		
		if (request.getParameter("pages") != null) {
			pages = Integer.parseInt(request.getParameter("pages"));
		}
//		String hql1 = "FROM Products where categoryid=:idlh";			
//		Query query1 = session.createQuery(hql1);
//		query1.setParameter("idlh",lhid);
//		@SuppressWarnings("unchecked")
//		List<Products> list1 = query1.list();
//		int slpr = list1.size();
//		query1.setFirstResult((pages - 1) * 9);
//		query1.setMaxResults(9);
//		@SuppressWarnings("unchecked")
//		List<Products> list2 = query1.list();
//		model.addAttribute("product", list2);
//		model.addAttribute("iddm",iddm);
//		model.addAttribute("idlh",lhid);
//		model.addAttribute("soluong", slpr);
//		model.addAttribute("page", pages);
		return "product";
	}
	@RequestMapping(value= {"/products"},params="idProduct")
	public String single(ModelMap model, @RequestParam("idProduct") String idProduct) {
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		String hql = "FROM Products where productId=:prdid";
		Query query = session.createQuery(hql);
		query.setParameter("prdid", idProduct);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		model.addAttribute("product", list);
		return "product-details";
	}

}
