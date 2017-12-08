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
<<<<<<< HEAD
	private static final SessionFactory sessionFactory = HibernateUtil.openSession().getSessionFactory();

	public List<Carts> getAllCarts() {
=======
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	
	public List<Carts> getAllCarts(){
>>>>>>> 173dedd0ddc711a96447a0012f581e0f7cb736ec
		List<Carts> data = new ArrayList<Carts>();
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
<<<<<<< HEAD
		// Transaction transaction = session.beginTransaction();

		String hql = "FROM Carts";
		Query query = session.createQuery(hql);
		data = query.list();
		
		if(data.size() > 0) {
			System.out.println(data.get(0));

			session.close();
=======
		try {
			String hql = "FROM Carts";
			Query query = session.createQuery(hql);
			data = query.list();
>>>>>>> 173dedd0ddc711a96447a0012f581e0f7cb736ec
			return data;
		}else {
			session.close();
			return data;
		}
		
	}
	
	public boolean addProductToCart(int prId,String username) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		return true;
	}
}
