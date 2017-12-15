package com.Models;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Entities.Accounts;
import com.Entities.Customers;

import hibernate.util.HibernateUtil;

public class AccountInfor {
	private static final SessionFactory sessionFactory = HibernateUtil.openSession().getSessionFactory();

	public boolean savenew(String username) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		AccountsModel am = new AccountsModel();
		Accounts ac = am.getAcc(username);
		Customers customer = new Customers(ac, username, true, "Chưa có email", 0, "Chưa cập nhập");
		try {
			session.save(customer);
			transaction.commit();
		} catch (Exception e) {
			System.out.println("rollback");
			transaction.rollback();
		}finally {
			session.clear();
			session.close();
		}
		return false;
	}

	public boolean addInfor(Customers customer) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			System.out.println(customer);
			session.save(customer);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		} finally {
			session.close();
		}
		return false;
	}
}
