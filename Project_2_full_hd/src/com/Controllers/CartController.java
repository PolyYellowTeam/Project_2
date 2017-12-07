/**
 * 
 */
package com.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author TuanVN4
 *
 */
@Controller
@RequestMapping(value="Carts")
public class CartController {
	@RequestMapping(value="Checkout")
	public @ResponseBody String index() {
		return "Aloha";
	}
}
