/**
 * 
 */
package com.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="admin/quan-ly-don-hang")
public class AdminCartsController {

	@RequestMapping(value= {"","/","/index"})
	public String index() {
		return "admin/quan-ly-don-hang";
	}
}
