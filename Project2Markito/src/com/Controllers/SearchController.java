package com.Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.Entities.Products;



@Controller
@Transactional
public class SearchController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "search")
	public String searchProducts(ModelMap model,HttpServletRequest request,@RequestParam("keyse") String keyse) {
		int pages = 1;
		Session session = factory.getCurrentSession();
		String hql = "FROM Products where productid like '%"+keyse+"%' or productname like '%"+keyse+"%' or categoryid like '%"+keyse+"%' or supplierid like '%"+keyse+"%'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		if(list.size()==0) {
			model.addAttribute("mesages", "Rất tiếc, chúng tôi không tìm thấy sản phẩm nào thỏa mãn điều kiện tìm kiếm của bạn!");
		}
		int slpr = list.size();
		query.setFirstResult((pages - 1) * 9);
		query.setMaxResults(9);
		@SuppressWarnings("unchecked")
		List<Products> list2 = query.list();
		model.addAttribute("product", list2);
		model.addAttribute("soluong", slpr);
		return "product";
	}
}
