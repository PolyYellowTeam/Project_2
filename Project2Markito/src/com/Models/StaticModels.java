package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.*;


public class StaticModels {
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	public List<Catalogs> getCatalogs(){
		List<Catalogs> listCatalogs = null;		
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();		
		try{
			String hql = "FROM Catalogs";
			Query query = session.createQuery(hql);
			listCatalogs = query.list();			
			return listCatalogs;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Suppliers> getSuppliers(){
		List<Suppliers> listSuppliers = null;		
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();		
		try{
			String hql = "FROM Suppliers";
			Query query = session.createQuery(hql);
			listSuppliers = query.list();			
			return listSuppliers;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}
}
