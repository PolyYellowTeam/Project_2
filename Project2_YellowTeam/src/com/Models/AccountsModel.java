package com.Models;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Entities.Accounts;
import hibernate.util.HibernateUtil;

public class AccountsModel {
	private static final SessionFactory sessionFactory = HibernateUtil.openSession().getSessionFactory();

	public boolean login(String username, String password) {
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from Accounts where username='" + username + "' and password='" + password + "'";
		Query query = session.createQuery(hql);
		data = query.list();
		if (data.size() == 1) {
			Accounts user = data.get(0);
			if (user.isStatus() == true) {
				session.close();
				return true;
			} else {
				session.close();
				return false;
			}
		} else
			session.close();
			return false;
	}

	public boolean isAdmin(String username, String password) {
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from Accounts where username='" + username + "' and password='" + password + "'";
		Query query = session.createQuery(hql);
		data = query.list();
		Accounts user = data.get(0);
		if (user.isRoles() == true) {
			session.close();
			return true;
		} else {
			session.close();
			return false;
		}
	}
}
