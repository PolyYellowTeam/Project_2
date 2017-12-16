package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.Accounts;
import com.Entities.Employees;

public class EmployeesModel {
	
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	
	public List<Employees> getDataEmp() {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			String hql = "FROM Employees";
			Query query = session.createQuery(hql);
			List<Employees> listEmp = query.list();
			return listEmp;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	public List<Accounts> getUserName(){
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		try{
			String hql= "SELECT username FROM Accounts";
			Query query = session.createQuery(hql);
			List<Accounts> listAcc = query.list();
			return listAcc;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}

	public boolean saveEmp(Employees emp) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		try {
			session.save(emp);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public Employees getempId(int empId) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			Employees emp = (Employees) session.get(Employees.class, empId);
			transaction.commit();
			return emp;
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

	public List<Employees> getEmp(int empId) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "FROM Employees where empId = " + empId;
		Query query = session.createQuery(hql);
		List<Employees> listOneEmp = query.list();
		return listOneEmp;
	}

	public boolean updateEmp(Employees emp) {
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.update(emp);
			System.out.println(emp.getEmpId());
			System.out.println(emp.getAccounts().getUsername());
			System.out.println(emp.isStatus());
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean deleteEmp(Employees emp) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(emp);
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
