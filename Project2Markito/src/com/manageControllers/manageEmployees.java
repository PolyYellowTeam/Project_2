package com.manageControllers;

import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Entities.Accounts;
import com.Entities.Employees;
import com.Models.EmployeesModel;

@Controller
public class manageEmployees {
	
	@Autowired
	SessionFactory sessionFactory;
	ServletContext context;

	@RequestMapping("/QLEadd")
	public String QLEform(ModelMap model) {
		model.addAttribute("EMP", new Employees());
		EmployeesModel empModel = new EmployeesModel();
		List<Accounts> listAcc = empModel.getUserName();
		model.addAttribute("listAcc", listAcc);
		return "admin_QLEadd";
	}

	@RequestMapping(value = "saveEMP", method = RequestMethod.POST)
	public String save(@ModelAttribute("EMP") Employees emp, ModelMap model, BindingResult errors) {
		
		EmployeesModel empModel = new EmployeesModel();
		boolean result = empModel.saveEmp(emp);
		if (result) {
			return "redirect:/QLEdata";
		} else {
			model.addAttribute("message", "Không thêm mới được nhân viên !");
			return "admin_QLEadd";
		}
	}

	@RequestMapping("/QLEdata")
	public String QLEdata(ModelMap model) {
		EmployeesModel empModel = new EmployeesModel();
		List<Employees> listEmp = empModel.getDataEmp();
		model.addAttribute("listEmp", listEmp);
		return "admin_QLEdata";
	}

	@RequestMapping(value = "QLEupdate", params ="empId")
	public String update(@RequestParam("empId") int empId, Employees emp, ModelMap model) {
		EmployeesModel empModel = new EmployeesModel();
		emp = empModel.getempId(empId);
		List<Employees> listOne = empModel.getEmp(empId);
		Object listOneEmp = listOne.get(0);
		model.addAttribute("EMP", listOneEmp);
		List<Accounts> listAcc = empModel.getUserName();
		model.addAttribute("listAcc", listAcc);
		return "admin_QLEupdate";
	}

	@RequestMapping(value = "updateEMP", method = RequestMethod.POST)
	public String updatesave(@ModelAttribute("EMP") Employees emp, ModelMap model, BindingResult errors) {
		
		EmployeesModel empModel = new EmployeesModel();
		boolean result = empModel.updateEmp(emp);
		if (result) {
			return "redirect:/QLEdata";
		} else {
			model.addAttribute("message", "Cập nhập bị lỗi !");
			return "admin_QLEupdate";
		}
	}

	@RequestMapping(value = "/deleteemp/{empId}", method = RequestMethod.GET)
	public String delete(@PathVariable int empId) {
		EmployeesModel empModel = new EmployeesModel();
		Employees emp = empModel.getempId(empId);
		empModel.deleteEmp(emp);
		return "redirect:/QLEdata";
	}
}
