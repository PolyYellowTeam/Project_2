/**
 * Author: Vũ Ngọc Tuân
 * Created: 06/12/2017 12:09 AM
 * Description: All controll about cart in here
 */

package com.Models;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Entities.Carts;

import hibernate.util.HibernateUtil;

public class CartModels {
	private static final SessionFactory sessionFactory = HibernateUtil.openSession().getSessionFactory();

	public List<Carts> getAllCarts() {
		List<Carts> data = new ArrayList<Carts>();
		Session session = sessionFactory.openSession();
		// Transaction transaction = session.beginTransaction();

		String hql = "FROM Carts";
		Query query = session.createQuery(hql);
		data = query.list();
		
		if(data.size() > 0) {
			System.out.println(data.get(0));

			session.close();
			return data;
		}else {
			session.close();
			return data;
		}
		
	}
}
