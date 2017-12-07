package com.Models;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Entities.Banners;

import hibernate.util.HibernateUtil;

public class BannerModel {
	
	private static final SessionFactory sessionFactory = HibernateUtil.openSession().getSessionFactory();
	
	public boolean loadDataBanner(){
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try{
			String hql = "FROM BANNERS";
			Query query = session.createQuery(hql);
			List<Banners> list = query.list();
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}
	
	public boolean changeBanner(Banners banners){
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
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
