/**
 * 
 */
package com.Controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Entities.Carts;
import com.Models.CartModels;

/**
 * @author TuanVN4
 *
 */
@Controller
@RequestMapping(value = "Carts")
public class CartController {
	@RequestMapping(value = { "", "/", "index" }, method = RequestMethod.GET)
	public @ResponseBody String index(@RequestParam(value = "t") String prId, ModelMap model) {
		List<Carts> listCarts = new CartModels().getAllCarts();
		model.addAttribute("listCarts", listCarts);
		return "admin/quan-ly-don-hang";
	}

	// Thêm sản phẩm vào giỏ hàng trả về kiểu text
	@RequestMapping(value = "AddProductToCart")
	public @ResponseBody String addProductToCart(HttpServletRequest request, @RequestParam(value = "prId") int prId) {
		// Nếu userName không trống tức là đã đăng nhập
		if (request.getSession().getAttribute("user") == null) {
			// Nếu userName trống tức là chưa đăng nhập thì chuyển về trang đăng nhập
			return "3";
		} else{
			if (new CartModels().addProductToCart(prId, request.getSession().getAttribute("user").toString())) {
				return "1";
			} else {
				return "2";
			}
		}
	}
}
