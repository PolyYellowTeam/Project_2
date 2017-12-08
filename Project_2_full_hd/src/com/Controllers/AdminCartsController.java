/**
 * 
 */
package com.Controllers;

import java.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Entities.Carts;
import com.Models.CartModels;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="admin/quan-ly-don-hang")
public class AdminCartsController {

	@RequestMapping(value= {"","/","/index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		List<Carts> listCarts = new CartModels().getAllCarts();
		model.addAttribute("listCarts",listCarts);
		for (Carts carts : listCarts) {
			System.out.println(carts.getEmployees());
		}
		return "admin/quan-ly-don-hang";
	}
	
	
}
