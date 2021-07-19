package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.impl.UserServiceImp;


@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private UserServiceImp userServiceImp;
	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String login(@RequestParam(value="username") String username, 
			@RequestParam(value="passwd") String passwd,UserTour vo, Locale locale, Model model) {
		vo.setUsername(username);
		vo.setPasswd(passwd);
		System.out.println(vo);
		userServiceImp.login(vo);
		System.out.println(userServiceImp.login(vo));
		if(userServiceImp.login(vo)!=null) 
		{
			System.out.println(1);
			return "redirect:/admin/department";
		}else {
			System.out.println("null");
			return "redirect:/login/";
		}
		
	}
}
