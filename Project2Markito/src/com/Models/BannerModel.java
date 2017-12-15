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

public class BannerModel {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional

	public List<Banners> getDataBanner() {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			String hql = "FROM Banners";
			Query query = session.createQuery(hql);
			List<Banners> listBanners = query.list();
			return listBanners;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	public boolean saveBanner(Banners banners) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		if (banners.getBannerName().trim().length() == 0) {
			return false;
		}
		if (banners.getbanner_content().trim().length() == 0) {
			return false;
		}
		if (banners.getSale_off().trim().length() == 0) {
			return false;
		}
		if (banners.getBannerImgUrl().trim().length() == 0) {
			return false;
		}

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

	public Banners getbannerId(int bannerId) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			Banners banners = (Banners) session.get(Banners.class, bannerId);
			transaction.commit();
			return banners;
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

	public List<Banners> getBanner(int bannerId) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "FROM Banners where banner_id = " + bannerId;
		Query query = session.createQuery(hql);
		List<Banners> listOneBa = query.list();
		return listOneBa;
	}

	public boolean updateBanner(Banners banners) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		if (banners.getBannerName().trim().length() == 0) {
			return false;
		}
		if (banners.getbanner_content().trim().length() == 0) {
			return false;
		}
		if (banners.getSale_off().trim().length() == 0) {
			return false;
		}
		if (banners.getBannerImgUrl().trim().length() == 0) {
			return false;
		}
		
		try {
			session.update(banners);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean deleteBanner(Banners banners) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(banners);
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
