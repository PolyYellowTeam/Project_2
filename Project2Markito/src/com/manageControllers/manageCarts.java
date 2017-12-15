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
<<<<<<< HEAD
@RequestMapping(value="/CartsManagement")
=======
@RequestMapping(value="Admin/Carts")
>>>>>>> b4fe52ea8a1c010f6c711cdf771ba55075ec3c61
public class manageCarts {
	
	@RequestMapping(value= {"","/","index"})
	public String index(ModelMap model){
		List<Carts> cartList = new AdminCartModels().getAllCarts();
		model.addAttribute("cartList",cartList);
		return "admin-cart";
	}
	
}
