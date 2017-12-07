package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.Banners;

import hibernate.util.HibernateUtil;

public class BannerModel {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	private Session session;
	private Transaction transaction;
	
	
	
	public List<Banners> getDataBanner(){
		List<Banners> listBa = null;
		
		sessionFactory = new Configuration().configure().buildSessionFactory();
		
		session = sessionFactory.openSession();
		
		try{
			String hql = "FROM Banners";
			Query query = session.createQuery(hql);
			listBa = query.list();
			
			return listBa;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}
	
	public boolean addBanner(Banners banners){
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		try {
			session.save(banners);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
	
	
	public boolean updateBanner(Banners banners, int id){
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		try {
			banners.setBannerId(id);
			session.update(banners);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return true;
		} finally {
			session.close();
		}
	}
	
	public boolean deleteBanner(Banners banners){
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(banners);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}
	
}
