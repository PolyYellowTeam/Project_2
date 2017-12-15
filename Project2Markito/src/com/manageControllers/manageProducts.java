package com.manageControllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resources;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Entities.Products;

@Controller
@Transactional

public class manageProducts {
	@Autowired
	ServletContext context;	
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
		querypr.setFirstResult((pages - 1) * 8);
		querypr.setMaxResults(8);
		@SuppressWarnings("unchecked")
		List<Products> list = querypr.list();
		model.addAttribute("listProducts", list);
		model.addAttribute("numbers", slpr);
		model.addAttribute("pages", pages);
		model.addAttribute("product", new Products());
		return "admin_products";
	}
	@RequestMapping(value= {"mngproducts"},params="addProduct", method = RequestMethod.GET)
	public String shownew(ModelMap model) {
		model.addAttribute("product", new Products());
		return "admin_addProducts";
	}
	@RequestMapping(value= {"mngproducts"},params="addProduct", method = RequestMethod.POST)
	public String addproduct(ModelMap model, @RequestParam("upfile1") MultipartFile upfile1,@RequestParam("upfile2") MultipartFile upfile2,@RequestParam("upfile3") MultipartFile upfile3,
			@Validated @ModelAttribute("product") Products product, BindingResult errors) {
		String filename1 = upfile1.getOriginalFilename();
		String filename2 = upfile2.getOriginalFilename();
		String filename3 = upfile3.getOriginalFilename();
		if (!filename1.equals("")&&!filename2.equals("")&&!filename3.equals(""))
			try {
				product.setPicture1("images/sanpham/"+filename1);
				product.setPicture2("images/sanpham/"+filename2);
				product.setPicture3("images/sanpham/"+filename3);
				String photoPath = context.getRealPath("/WEB-INF/images/sanpham/" + upfile1.getOriginalFilename());			
				upfile1.transferTo(new File(photoPath));
			} catch (Exception ex) {
				ex.printStackTrace();
		}else {
			model.addAttribute("message1","Vui lÃ²ng chá»�n hÃ¬nh áº£nh!");
		}
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(product);
			t.commit();
			model.addAttribute("status",true);
			model.addAttribute("message", "Good, ThÃªm má»›i sáº£n pháº©m thÃ nh cÃ´ng!");			
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("status",false);
			model.addAttribute("message", "*ThÃªm má»›i tháº¥t báº¡i. Vui lÃ²ng nháº­p láº¡i!");
		} finally {
			session.close();
		}		
		return "admin_addProducts";
	}	
	@RequestMapping(value= {"mngproducts"},params="updateProduct", method = RequestMethod.GET)
	public String showProduct(ModelMap model, HttpServletRequest request,@ModelAttribute("product") Products product) {
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		String idProduct=request.getParameter("idProduct");
		String hql = "FROM Products where productId=:idPro";
		Query query = session.createQuery(hql);
		query.setParameter("idPro", idProduct);
		@SuppressWarnings("unchecked")
		List<Products> pro = query.list();
		Products pr=pro.get(0);
		String picture1=pr.getPicture1();
		String picture2=pr.getPicture2();
		String picture3=pr.getPicture2();
		model.addAttribute("picture1", picture1);
		model.addAttribute("picture2", picture2);
		model.addAttribute("picture3", picture3);
		model.addAttribute("product",pr);
		return "admin_updateProduct";
	}
	@RequestMapping(value= {"mngproducts"},params="updateProduct", method = RequestMethod.POST)
	public String updateProduct(ModelMap model, @RequestParam("upfile1") MultipartFile upfile1,@RequestParam("upfile2") MultipartFile upfile2,@RequestParam("upfile3") MultipartFile upfile3,
			@Validated @ModelAttribute("product") Products product, BindingResult errors) {
		String filename1 = upfile1.getOriginalFilename();
		String filename2 = upfile2.getOriginalFilename();
		String filename3 = upfile3.getOriginalFilename();
		if (!filename1.equals("")&&!filename2.equals("")&&!filename3.equals(""))
			try {
				product.setPicture1("images/sanpham/"+filename1);
				product.setPicture2("images/sanpham/"+filename2);
				product.setPicture3("images/sanpham/"+filename3);
				String photoPath = context.getRealPath("/WEB-INF/images/sanpham/" + upfile1.getOriginalFilename());			
				upfile1.transferTo(new File(photoPath));
			} catch (Exception ex) {
				ex.printStackTrace();
		}else {
			model.addAttribute("message1","Vui lÃ²ng chá»�n hÃ¬nh áº£nh!");
		}
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(product);
			t.commit();
			model.addAttribute("status",true);
			model.addAttribute("message", "Good, Cáº­p nháº­t sáº£n pháº©m thÃ nh cÃ´ng!");			
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("status",false);
			model.addAttribute("message", "*Cáº­p nháº­t tháº¥t báº¡i. Vui lÃ²ng thá»­ láº¡i!");
		} finally {
			session.close();
		}		
		return "admin_updateProduct";
	}
	@RequestMapping(value= {"mngproducts"},params="deleteProduct")
	public void delete(ModelMap model,Products product, HttpServletRequest request, HttpServletResponse response) {		
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		try {		
			String idPro=request.getParameter("idProduct");
			product.setProductId(idPro);
			session.delete(product);
			t.commit();
			model.addAttribute("status",true);
			model.addAttribute("message", "XÃ³a sáº£n pháº©m thÃ nh cÃ´ng!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("status",false);
			model.addAttribute("message", "*XÃ³a sáº£n pháº©m tháº¥t báº¡i. Vui lÃ²ng thá»­ láº¡i!");
		} finally {
			session.close();
		}
		try {
			response.sendRedirect(request.getContextPath() + "/mngproducts");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value= {"mngproducts"},params="searchProduct")
	public String searchProducts(ModelMap model,HttpServletRequest request,@RequestParam("keySearch") String key) {
		int pages = 1;
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		String hql = "FROM Products where productId like '%"+key+"%' or productName like '%"+key+"%' or categories.categoryName like '%"+key+"%' or suppliers.supplierName like '%"+key+"%' or quantity like '%"+key+"%'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		if(list.size()==0) {
			model.addAttribute("mesages", "Ráº¥t tiáº¿c, chÃºng tÃ´i khÃ´ng tÃ¬m tháº¥y sáº£n pháº©m nÃ o thá»�a mÃ£n Ä‘iá»�u kiá»‡n tÃ¬m kiáº¿m cá»§a báº¡n!");
		}
		int slpr = list.size();
		query.setFirstResult((pages - 1) * 9);
		query.setMaxResults(9);
		@SuppressWarnings("unchecked")
		List<Products> list2 = query.list();
		model.addAttribute("listProducts", list2);
		model.addAttribute("soluong", slpr);
		return "admin_products";
	}	
}
