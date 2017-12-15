/**
 * 
 */
package com.manageControllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entities.Carts;
import com.Models.AdminCartModels;

/**
 * @author TuanVN4@fpt.com.vn
 *
 */
@Controller
@RequestMapping(value="Admin/Carts")
public class manageCarts {
	
	@RequestMapping(value= {"","/","index"})
	public String index(ModelMap model){
		List<Carts> cartList = new AdminCartModels().getAllCarts();
		model.addAttribute("cartList",cartList);
		return "admin-cart";
	}
	
}
