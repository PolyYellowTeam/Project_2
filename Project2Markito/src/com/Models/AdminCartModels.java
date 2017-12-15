/**
 * 
 */
package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.*;

/**
 * @author TuanVN4@fpt.com.vn
 *
 */
public class AdminCartModels {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	
	public List<Carts> getAllCarts() {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		
		Session session =sessionFactory.openSession(); 
		
		try {
			String hql = "FROM Carts WHERE Cart_status > 0";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Carts> cartList = query.list();
			return cartList;
		} catch (Exception e) {
			System.out.println("getAllCart():"+e.getMessage());
			e.printStackTrace();
			return null;
		}finally {
			session.flush();
			session.clear();
			session.close();
		}	
	}
	
}
