/**
 * Author: Vũ Ngọc Tuân
 * Create date: 28/11/2017
 * Description: Tất cả những luồng đi của
 * chức năng thuộc phía quản trị, admin,
 * nhân viên đều nằm ở đây 
 */
package com.Controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entities.Carts;
import com.Models.CartServices;

@Controller
@RequestMapping(value = "admin/")
public class AdminFunctionController {
	
	//Trang chủ chức năng quản lý đơn hàng
	@RequestMapping(value="/quan-ly-don-hang")
	public String QuanLyGioHang() {
		List<Carts> CartList = new CartServices().GetAllCart();
		return "admin/quan-ly-don-hang";
	}
}
