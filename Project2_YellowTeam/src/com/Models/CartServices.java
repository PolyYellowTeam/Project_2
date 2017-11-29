/**
 * 
 */
package com.Models;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import com.Entities.*;

/**
 * @author Bruke
 *
 */
public class CartServices {
	//Tiêm SessionFactory
	@Autowired
	SessionFactory sessionFactory;
	//Tiêm transactional để thực hiện CUD
	@Transactional
	
	//Lấy toàn bộ đơn hàng
	public List<Carts> GetAllCart(){
		
		List<Carts> CartList = null;
		Session session = null;
		
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			String queryString = "FROM Carts";
			Query queryResult = session.createQuery(queryString);
			CartList = queryResult.list();
			for (Carts item : CartList) {
				System.out.println(item.getCartId());
			}
			return CartList;
		} catch (Exception e) {
			//�?ưa ra lỗi và trả v�? null
			System.out.println(e);
			return null;
		}finally {
			session.close();
			sessionFactory.close();
		}
	}
	
}
