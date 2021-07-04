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
import com.hakunamatata.springmvc.service.ServiceInterface;




@Controller
@RequestMapping("/department")
public class DepartmentController {
	@Autowired
	private ServiceInterface<Department> departmentService;

	
	@RequestMapping(value = {"/",""}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Department> list = departmentService.list(null);
		model.addAttribute("departmentList",list);
		//System.out.println(list);
		return "admin/department/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Department vo = new Department();
		vo.setId(id.intValue());
		departmentService.delete(vo);
		System.out.println(vo);
		return "redirect:/department/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Department vo = new Department();
		vo.setId(id.intValue());
		Department department = departmentService.get(vo);
		model.addAttribute("departmentOne",department);
		//System.out.println(department);
		return "admin/department/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Department vo, Locale locale, Model model) {
		System.out.println(vo);
		departmentService.update(vo);		
		return "redirect:/department/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String edit(Locale locale, Model model) {
		return "admin/department/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String edit(Department vo, Locale locale, Model model) {
		System.out.println(vo);
		departmentService.insert(vo);		
		return "redirect:/department/";
	}
}
