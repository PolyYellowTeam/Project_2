/**
 * Author: Vũ Ngọc Tuân
 * Created: 06/12/2017 12:09 AM
 * Description: All controll about cart in here
 */

package com.Models;

import java.util.*;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.Carts;

import hibernate.util.HibernateUtil;

public class CartModels {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	
	public List<Carts> getAllCarts(){
		List<Carts> data = new ArrayList<Carts>();
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		try {
			String hql = "FROM Carts";
			Query query = session.createQuery(hql);
			data = query.list();
			return data;
		} catch (Exception e) {
			return null;
		}finally {
			session.close();
		}
	}
	
	public boolean addProductToCart(int prId,String username) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		return true;
	}
}
