/**
 * 
 */
package com.Controllers;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entities.Carts;
import com.Models.CartModels;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="admin/quan-ly-don-hang")
public class AdminCartsController {

	@RequestMapping(value= {"","/","/index"})
	public String index() {
		List<Carts> listCarts = new CartModels().getAllCarts();
		return "admin/quan-ly-don-hang";
	}
}
