package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.service.impl.DepartmentService;




@Controller
@RequestMapping("/department")
public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Department> list = departmentService.listDepartment(null);
		model.addAttribute("departmentList",list);
		return "admin/department/list";// /WEB_INF/views/article/home.jsp
	}

	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		
		return "admin/department/new";
	}

	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Locale locale, Model model) {
		
		return "admin/department/edit";
	}
}
