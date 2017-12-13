package com.Models;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.*;
public class ProductModels {
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	public List<Products> getProducts(){
		List<Products> listProducts = null;		
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();		
		try{
			String hql = "FROM Products";
			Query query = session.createQuery(hql);
			listProducts = query.list();			
			return listProducts;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}
}
