/**
 * 
 */
package com.manageControllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Entities.Carts;
import com.Models.AdminCartModels;
import com.bean.BaseClass;

/**
 * @author TuanVN4@fpt.com.vn
 *
 */
@Controller

@RequestMapping(value = "admin/CartsManagement")
public class manageCarts {

	@RequestMapping(value = { "", "/", "index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		List<Carts> cartList = new AdminCartModels().getAllCarts();
		model.addAttribute("cartList", cartList);
		return "admin-cart";
	}
	
	@RequestMapping(params="phanbo",method = RequestMethod.GET)
	public String phanBoDonHang(HttpServletRequest request,ModelMap model,@RequestParam(value="cartId") String cartId) {
		
		if(cartId.isEmpty()) {
			return "redirect:"+BaseClass.getRootUrl(request)+"/admin/CartsManagement";
		}else {
			model.addAttribute("cart",new AdminCartModels().getCart(cartId));
			return "admin-cart-pbdh";
		}
	}
}
