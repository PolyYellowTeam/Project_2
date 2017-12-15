/**
 * 
 */
package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.Entities.*;
import com.bean.BaseClass;

import hibernate.util.HibernateUtil;

/**
 * @author Administrator
 *
 */
public class CartModels {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional

	public Products getProductToAddCart(String idProduct) {
		Products product = null;
		sessionFactory = new Configuration().configure().buildSessionFactory();

		Session session = sessionFactory.openSession();

		try {
			String hql = "FROM Products where productId=:prdid AND Pr_status = 1";
			Query query = session.createQuery(hql);
			query.setParameter("prdid", idProduct);
			@SuppressWarnings("unchecked")
			List<Products> list = query.list();
			product = list.get(0);
		} catch (Exception e) {
			System.out.println("getProductToAddCart() err " + e.getMessage());
			product = null;
		} finally {
			session.flush();
			session.clear();
			session.close();
		}

		return product;

	}

	public List<Carts> getCheckedOutCart(String userName) {
		List<Carts> cartList = null;
		sessionFactory = new Configuration().configure().buildSessionFactory();

		Session session = sessionFactory.openSession();

		try {
			Query query = session
					.createSQLQuery("SELECT Customer_id FROM Customers WHERE Username = '" + userName + "'");
			List cusIdTemp = query.list();
			int cusId = (int) cusIdTemp.get(0);
			session.flush();
			session.clear();String hql = "FROM Carts where Customer_id = :cusId AND Cart_status = 1 ";
			query = session.createQuery(hql);
			query.setParameter("cusId", cusId);
			cartList = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getCheckedOutCart(): e.getMessage()");
			return null;
		} finally {
			session.flush();
			session.clear();
			session.close();
		}
		return cartList;
	}

	public boolean checkOut(String userName, List<Products> productList) {
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			// Láº¥y id khÃ¡ch hÃ ng
			Query query = session
					.createSQLQuery("SELECT Customer_id FROM Customers WHERE Username = '" + userName + "'");
			List cusIdTemp = query.list();
			int cusId = (int) cusIdTemp.get(0);
			session.flush();
			session.clear();

			// TÃ­nh tá»•ng hÃ³a Ä‘Æ¡n
			double total = 0;
			for (Products obj : productList) {
				double totalPrice = (Double.parseDouble(obj.getPrice().toString().trim())
						* (double) (100 - obj.getDiscount()) / 100) * obj.getQuantity();
				total = total + totalPrice;
			}

			// Táº¡o má»™t giá»� hÃ ng má»›i
			String sql = String.format(
					"INSERT INTO Carts (Customer_id,Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status) "
							+ "VALUES (" + cusId + "" + ",'" + BaseClass.getCurrentDateTime() + "'" + "," + total + ""
							+ ",N'Chưa có'" + ",'" + BaseClass.getCurrentDateTime() + "'" + ",1,0);");
			session.createSQLQuery(sql).executeUpdate();
			session.flush();
			session.clear();

			// Láº¥y id giá»� hÃ ng
			query = session.createSQLQuery(
					"SELECT Cart_Id FROM Carts WHERE Cart_status = 1 AND Customer_id = '" + cusId + "'");
			List cartIdTemp = query.list();
			int cartId = (int) cartIdTemp.get(cartIdTemp.size() - 1);
			session.flush();
			session.clear();

			sql = "";
			for (Products obj : productList) {
				sql = sql + String.format("INSERT INTO Cart_Details (Cart_id,Product_id,Quantity,Price) VALUES ("
						+ cartId + ",'" + obj.getProductId() + "'," + obj.getQuantity() + "," + obj.getPrice() + ");");
			}
			session.createSQLQuery(sql).executeUpdate();
			session.flush();
			session.clear();

			trans.commit();
			return true;
		} catch (Exception e) {
			System.out.println("Msg: " + e.getMessage());
			System.out.println("Cause: " + e.getCause());
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
	
	public boolean cancelCart(String cartId) {
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		
		try {
			String hql = "FROM Carts where Cart_Id = :cartId";
			Query query = session.createQuery(hql);
			query.setParameter("cartId", cartId);
			Carts cart = (Carts) query.uniqueResult();
			cart.setCartStatus(0);
			
			session.update(cart);
			trans.commit();
			return true;
		} catch (Exception e) {
			trans.rollback();
			e.printStackTrace();
			return false;
		}finally {
			session.flush();
			session.clear();
			session.close();
		}
	}
}