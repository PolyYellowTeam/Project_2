/**
 * 
 */
package com.Controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.Entities.*;
import com.Models.CartModels;

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
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "AddToCart")
	public @ResponseBody String AddToCart(HttpSession session, @RequestParam("idProduct") String idProduct) {
		List<Products> cart = null;
		try {
			if (idProduct.isEmpty()) {
				return "false";
			} else {
				Products getProduct = new CartModels().getProductToAddCart(idProduct);
				getProduct.setQuantity(1);
				if (getProduct == null) {
					return "false";
				} else {
					if (session.getAttribute("cart") != null) {
						cart = (List<Products>) session.getAttribute("cart");
						int count = 0;
						for (Products prd : cart) {
							if (idProduct.equals(prd.getProductId())) {
								prd.setQuantity(prd.getQuantity() + 1);
								// DecimalFormat decimalFormat = new DecimalFormat();
								// decimalFormat.setParseBigDecimal(true);
								// BigDecimal price = (BigDecimal) decimalFormat.parse(
								// (Double.parseDouble(prd.getPrice().toString()) * prd.getQuantity()) + "");
								// prd.setPrice(price);
								count = count + 1;
							}
						}
						if (count <= 0) {
							cart.add(getProduct);
						}
						session.setAttribute("cart", cart);
					} else {
						cart = new ArrayList<>();
						cart.add(getProduct);
						session.setAttribute("cart", cart);
					}
					// cart = (List<Products>) session.getAttribute("cart");
					// for (Products products : cart) {
					// System.out.println(
					// products.getProductName() + "|" + products.getPrice() + "|" +
					// products.getQuantity());
					// }
					return "true";
				}
			}
		} catch (

		Exception e) {
			System.out.println("Cart addtocart " + e.getMessage());
			return "false";
		}
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "QuantityUpdate",produces = "application/json; charset=utf-8")
	public @ResponseBody String QuantityUpdate(HttpServletRequest request,HttpSession session,
			@RequestParam(value="idProduct") String idProduct,@RequestParam(value="action") String action,@RequestParam(value="quantity", required=false) String quantity) {
		List<Products> cart = null;
		String returnResult = "{\"status\":\"false\"}";
		try {
			int quanTiTy = 0;
			if(!quantity.isEmpty()) {
				 quanTiTy = Integer.parseInt(quantity);
			}
			
			if (idProduct.isEmpty()) {
				returnResult = "{\"status\":\"false\"}";
			} else {
				Products getProduct = new CartModels().getProductToAddCart(idProduct);
				if(getProduct != null) {
					if (session.getAttribute("cart") != null) {
						cart = (List<Products>) session.getAttribute("cart");
						returnResult = "{";
						for (Products prd : cart) {
							if (getProduct.getProductId().equals(prd.getProductId())) {
								prd.setPicture1(getProduct.getPicture1());
								prd.setProductName(getProduct.getProductName());
								prd.setDiscount(getProduct.getDiscount());
								prd.setPrice(getProduct.getPrice());
								
								switch(action) {
									case "plus":
										prd.setQuantity(prd.getQuantity() + 1);
										break;
									case "minus":
										if(prd.getQuantity()<=1) {
											return returnResult = "{\"status\":\"false\"}";
										}else {
											prd.setQuantity(prd.getQuantity() - 1);
										}
										break;
									case "update":
										if(quanTiTy<=0) {
											return returnResult = "{\"status\":\"false\"}";
										}else {
											prd.setQuantity(quanTiTy);
										}
										break;
									default:
										return returnResult = "{\"status\":\"false\"}";
								}
								
								double totalPrice = (Double.parseDouble(prd.getPrice().toString().trim())*(double)(100-prd.getDiscount())/100)*prd.getQuantity();
								
								NumberFormat formatter = new DecimalFormat("###,###");
						        String resp = formatter.format(totalPrice).replace(",", ".");
						        String price = formatter.format(prd.getPrice()).replace(",", ".");
								
						        
						        
						        returnResult = returnResult+"\"status\":\"true\","
						        		+ "\"cart_quantity_input\":\""+prd.getQuantity()+"\","
										+"\"cart_total_price\":\""+resp+" VNĐ\","
										+ "\"cart_description_p\":\""+prd.getDiscount()+"\","
										+ "\"cart_product\":\""+request.getContextPath()+"/"+prd.getPicture1()+"\","
										+ "\"cart_price\":\""+price+" VNĐ\","
										+ "\"cart_description_a\":\""+prd.getProductName()+"\"";
							}
						}
						returnResult = returnResult+"}";
						session.setAttribute("cart", cart);
					} else {
						returnResult = "{\"status\":\"false\"}";
					}
				}else {
					returnResult = "{\"status\":\"false\"}";
				}
			}
		} catch (Exception e) {
			System.out.println("Cart addtocart " + e.getMessage());
			return "{\"status\":\"false\"}";
		}
		
		return returnResult;
	}

	@RequestMapping(value = "paymentCheck")
	public @ResponseBody String CheckOut(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "err";			
		} else {
			return "true";
		}
		
	}
	
	@RequestMapping(value = "confirmCheckOut")
	public String ConfirmCheckOut(HttpSession session,HttpServletRequest request) {
		if(session.getAttribute("user") == null){
			String path = request.getContextPath();
			return "redirect:../login";
		}else if(session.getAttribute("cart") == null){
			String path = request.getContextPath();
			return "redirect:../login";
		}else{
			boolean CartDetails = new CartModels().checkOut(session.getAttribute("user").toString(),(List<Products>)session.getAttribute("cart"));
			return "cart";
		}
	}

	@RequestMapping(value = "checkCart")
	public String CheckCart(HttpSession session, ModelMap model) {
		List<Products> productList = null;
		if (session.getAttribute("cart") != null) {
			productList = (List<Products>) session.getAttribute("cart");
		} else {
			productList = new ArrayList<>();
		}

		model.addAttribute("checkCart", productList);
		return "cart";
	}

}
