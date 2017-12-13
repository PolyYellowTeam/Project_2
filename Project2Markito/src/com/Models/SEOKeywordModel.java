package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.SeoKeywords;

public class SEOKeywordModel {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	
	public List<SeoKeywords> getDataSeoKeywords() {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			String hql = "FROM SEOkeywords";
			Query query = session.createQuery(hql);
			List<SeoKeywords> listSeo = query.list();
			return listSeo;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	public boolean saveSeoKeywords(SeoKeywords SeoKeywords) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(SeoKeywords);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
	
	public SeoKeywords getSEOId(int seoId) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			SeoKeywords seo = (SeoKeywords) session.get(SeoKeywords.class, seoId);
			transaction.commit();
			return seo;
		} catch (Exception e) {
			e.printStackTrace();
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	public List<SeoKeywords> getSeokey(int seoId) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "FROM SEO_keywords where keyword_id = " + seoId;
		Query query = session.createQuery(hql);
		List<SeoKeywords> listOneKey = query.list();
		return listOneKey;
	}
	
	public boolean updateSeokey(SeoKeywords seoKeywords) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(seoKeywords);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
	
	public boolean deleteSeokey(SeoKeywords seoKeywords) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(seoKeywords);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
	
}
