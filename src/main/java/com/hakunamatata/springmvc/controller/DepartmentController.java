package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.service.impl.DepartmentService;




@Controller
@RequestMapping("/department")
public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;

	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Department> list = departmentService.list(null);
		model.addAttribute("departmentList",list);
		//System.out.println(list);
		return "admin/department/list";
	}

	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String write(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Department vo = new Department();
		vo.setId(id.intValue());
		Department department = departmentService.get(vo);
		model.addAttribute("departmentOne",department);
		//System.out.println(department);
		return "admin/department/edit";
	}

	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String edit(Locale locale, Model model) {
		
		return "admin/department/new";
	}
}
