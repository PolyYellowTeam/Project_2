/**
 * 
 */
package com.Controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.Entities.*;
import com.Models.CartModels;
import com.bean.BaseClass;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.*;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "Carts")
public class CartControllers {
	
	// Thêm sản phẩm vào giỏ
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "AddToCart",produces = "application/json; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String AddToCart(HttpSession session, @RequestParam("idProduct") String idProduct) {
		List<Products> cart = null;

		try {
			// Nếu idProducts thì trả về false
			if (idProduct.isEmpty()) {
				return "false";
			}
			// Ngược lại thì thực hiện
			else {
				// Lấy product từ db
				Products getProduct = new CartModels().getProductToAddCart(idProduct);
				// Mặc định số lượng = 1
				getProduct.setQuantity(1);

				// Nếu lấy product bị null thì trả về false
				if (getProduct == null) {
					return "false";
				}
				// Ngược lại nếu không null
				else {
					// Nếu tồn tại giỏ hàng trong session
					if (session.getAttribute("cart") != null) {

						// Lấy giỏ hàng trong session
						cart = (List<Products>) session.getAttribute("cart");
						int count = 0;
						for (Products prd : cart) {
							// Nếu sản phẩm đã có trong giỏ thì tăng số lượng lên 1
							if (idProduct.equals(prd.getProductId())) {
								prd.setQuantity(prd.getQuantity() + 1);
								count = count + 1;
							}
						}

						// Ngược lại thì thêm mới một sản phẩm vào giỏ
						if (count <= 0) {
							cart.add(getProduct);
						}

						// Ghi giỏ hàng vào session
						session.setAttribute("cart", cart);

					}
					// Nếu giỏ hàng không tồn tại trong session thì tạo mới giỏ hàng và thêm sản
					// phẩm vào
					else {
						cart = new ArrayList<>();
						cart.add(getProduct);
						session.setAttribute("cart", cart);
					}
					return "true";
				}
			}
		} catch (Exception e) {
			System.out.println("Cart addtocart " + e.getMessage());
			return "false";
		}
	}

	
	//Sửa giỏ hàng
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "QuantityUpdate", produces = "application/json; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String QuantityUpdate(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "idProduct") String idProduct, @RequestParam(value = "action") String action,
			@RequestParam(value = "quantity", required = false) String quantity) {
		List<Products> cart = null;
		
		String returnResult = "{\"status\":\"false\"}";
		
		try {
			int quanTiTy = 0;
			if (!quantity.isEmpty()) {
				quanTiTy = Integer.parseInt(quantity);
			}

			if (idProduct.isEmpty()) {
				returnResult = "{\"status\":\"false\"}";
			} else {
				Products getProduct = new CartModels().getProductToAddCart(idProduct);
				if (getProduct != null) {
					if (session.getAttribute("cart") != null) {
						cart = (List<Products>) session.getAttribute("cart");
						returnResult = "{";
						for (Products prd : cart) {
							if (getProduct.getProductId().equals(prd.getProductId())) {
								prd.setPicture1(getProduct.getPicture1());
								prd.setProductName(getProduct.getProductName());
								prd.setDiscount(getProduct.getDiscount());
								prd.setPrice(getProduct.getPrice());

								switch (action) {
								case "plus":
									prd.setQuantity(prd.getQuantity() + 1);
									break;
								case "minus":
									if (prd.getQuantity() <= 1) {
										return returnResult = "{\"status\":\"false\"}";
									} else {
										prd.setQuantity(prd.getQuantity() - 1);
									}
									break;
								case "update":
									if (quanTiTy <= 0) {
										return returnResult = "{\"status\":\"false\"}";
									} else {
										prd.setQuantity(quanTiTy);
									}
									break;
								case "delete":
									cart.remove(prd);
									session.setAttribute("cart", cart);
									return returnResult = "{\"status\":\"deleted\"}";
								default:
									return returnResult = "{\"status\":\"false\"}";
								}

								double totalPrice = (Double.parseDouble(prd.getPrice().toString().trim())
										* (double) (100 - prd.getDiscount()) / 100) * prd.getQuantity();

								NumberFormat formatter = new DecimalFormat("###,###");
								String resp = formatter.format(totalPrice).replace(",", ".");
								String price = formatter.format(prd.getPrice()).replace(",", ".");

								returnResult = returnResult + "\"status\":\"true\"," + "\"cart_quantity_input\":\""
										+ prd.getQuantity() + "\"," + "\"cart_total_price\":\"" + resp + " VNĐ\","
										+ "\"cart_description_p\":\"" + prd.getDiscount() + "\","
										+ "\"cart_product\":\"" + request.getContextPath() + "/" + prd.getPicture1()
										+ "\"," + "\"cart_price\":\"" + price + " VNĐ\"," + "\"cart_description_a\":\""
										+ prd.getProductName() + "\"";
							}
						}
						returnResult = returnResult + "}";
						session.setAttribute("cart", cart);
					} else {
						returnResult = "{\"status\":\"false\"}";
					}
				} else {
					returnResult = "{\"status\":\"false\"}";
				}
			}
		} catch (Exception e) {
			System.out.println("Cart addtocart " + e.getMessage());
			return "{\"status\":\"false\"}";
		}

		return returnResult;
	}

	@RequestMapping(params = "paymentCheck",produces = "application/json; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String CheckOut(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "err";
		} else {
			return "true";
		}

	}

	@RequestMapping(params = "confirmCheckOut",produces = "application/json; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String ConfirmCheckOut(HttpSession session,HttpServletRequest request) {
		if (session.getAttribute("user") == null) {
			return "{\"Msg\":\"Bạn phải đăng nhập để đặt hàng\","
					+ "\"Status\":\"false\"}";
		} else if (session.getAttribute("cart") == null) {
			return "{\"Msg\":\"Giỏ hàng của bạn đang trống\","
					+ "\"Status\":\"false\"}";
		} else if(session.getAttribute("user") != null && session.getAttribute("cart") != null){
			boolean CartDetails = new CartModels().checkOut(session.getAttribute("user").toString(),
					(List<Products>) session.getAttribute("cart"));
			List<Products> cart = new ArrayList<Products>();
			session.setAttribute("cart", cart);
			return "{\"Msg\":\"Bạn đã đặt hàng thành công\","
			+ "\"Status\":\"true\"}";
			
		}else {
			return "{\"Msg\":\"Không có sản phẩm trong giỏ\nĐặt hàng thất bại\","
					+ "\"Status\":\"false\"}";
		}
	}

	@RequestMapping(params = "checkCart")
	public String CheckCart(HttpSession session, ModelMap model) {
		List<Products> productList = null;
		List<Carts> cartList = null;
		if (session.getAttribute("user") != null ) {
			cartList = (List<Carts>) new CartModels().getCheckedOutCart(session.getAttribute("user").toString());
			if (session.getAttribute("cart") != null) {
				productList = (List<Products>) session.getAttribute("cart");
			}else {
				productList = new ArrayList<>();
			}
		}else {
			if (session.getAttribute("cart") != null) {
				productList = (List<Products>) session.getAttribute("cart");
			}else {
				productList = new ArrayList<>();
			}
		}
		model.addAttribute("cartCheckedList",cartList);
		model.addAttribute("checkCart", productList);
		return "cart";
	}
	
	@RequestMapping(params = "cancelCart",produces = "application/json; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String CancelCart(HttpSession session, ModelMap model,@RequestParam(value="cartId") String cartId) {
		if(new CartModels().cancelCart(cartId)) {
			return "{\"status\":\"true\","
					+ "\"Msg\":\"Đã hủy đơn hàng\""
					+ "}";
		}else {
			return "{\"status\":\"false\","
					+ "\"Msg\":\"Hủy đơn hàng thất bại\""
					+ "}";
		}
	}

}