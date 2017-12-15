package com.Interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.Entities.*;
@Transactional
public class Interceptor extends HandlerInterceptorAdapter {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	@SuppressWarnings("deprecation")
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		sessionFactory = new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();	
		String hqlCatalogs = "FROM Catalogs";
		Query query = session.createQuery(hqlCatalogs);
		@SuppressWarnings("unchecked")
		List<Catalogs>listCatalogs = query.list();
		request.setAttribute("listCatalogs", listCatalogs);	
		String hqlSuppliers = "FROM Suppliers";
		Query querySuppliers = session.createQuery(hqlSuppliers);
		@SuppressWarnings("unchecked")
		List<Suppliers>listSuppliers = querySuppliers.list();
		request.setAttribute("listSuppliers", listSuppliers);
		
		String hqlSeoKeyword = "FROM SeoKeywords";
		Query querySeoKeyword = session.createQuery(hqlSeoKeyword);
		@SuppressWarnings("unchecked")
		List<SeoKeywords>listSeo = querySeoKeyword.list();
		request.setAttribute("listSeo", listSeo);
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		return true;
	}
}
