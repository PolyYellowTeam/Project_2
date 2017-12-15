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
		System.out.println(customer);
		try {
			session.save(customer);
			transaction.commit();
		} catch (Exception e) {
			System.out.println("rollback");
			e.getMessage();
			e.getCause();
			e.printStackTrace();
			transaction.rollback();
		}finally {
			session.close();
		}
		return false;
}

	public boolean addInfor(Customers customer) {
		System.out.println(customer.getCustomerId());
		System.out.println(customer.getCustomerName());
		System.out.println(customer.getAccounts().getUsername());
		System.out.println(customer.getAccounts().getPassword());
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			System.out.println(customer);
			session.save(customer);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.getMessage();
			e.getCause();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}
}