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

	public List<Accounts> getAll() {
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		String hql = "from Accounts";
		data = session.createQuery(hql).list();
		return data;
	}

	public Accounts getAcc(String username) {
		Accounts acc = new Accounts();
		Session session = sessionFactory.openSession();
		String hql = "from Accounts where username='" + username + "'";
		acc = (Accounts) session.createQuery(hql).uniqueResult();
		return acc;
	}

	public boolean userlogin(String username, String password) {
		System.out.println("login model");
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from Accounts where Roles = 0 AND Status = 1 AND username='" + username + "' and password='" + password + "'";
		Query query = session.createQuery(hql);
		data = query.list();
		if (data.size() != 0) {
			Accounts user = data.get(0);
			if (user.isStatus() == true) {
				session.close();
				return true;
			} else {
				session.close();
				return false;
			}
		} else {
			session.close();
			return false;
		}
	}
	
	public boolean adminlogin(String username, String password) {
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from Accounts where Roles > 0 AND Status = 1 AND username='" + username + "' and password='" + password + "'";
		Query query = session.createQuery(hql);
		data = query.list();
		if (data.size() != 0) {
			Accounts user = data.get(0);
			if (user.isStatus() == true) {
				session.close();
				return true;
			} else {
				session.close();
				return false;
			}
		} else {
			session.close();
			return false;
		}
	}

	public boolean isAdmin(String username, String password) {
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		String hql = "from Accounts where Roles > 0 AND Status = 1 AND username='" + username + "' and password='" + password + "'";
		Query query = session.createQuery(hql);
		data = query.list();
		Accounts user = data.get(0);
		if (user.isRoles() != 0) {
			session.close();
			return true;
		} else {
			session.close();
			return false;
		}
	}

	public int checkRoles(String username) {
		List<Accounts> data = new ArrayList<Accounts>();
		Session session = sessionFactory.openSession();
		String hql = "from Accounts where Roles > 0 AND Status = 1 AND username='" + username + "'";
		Query query = session.createQuery(hql);
		data = query.list();
		Accounts user = data.get(0);
		if (user != null) {
			session.close();
			return user.isRoles();
		} else {
			session.close();
			return -1;
		}
	}

	public boolean register(Accounts account) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(account);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean changepassword(Accounts account) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(account);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean update(Accounts account) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(account);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean create(Accounts account) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(account);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
			return false;
		} finally {
			session.close();
		}
	}
}
