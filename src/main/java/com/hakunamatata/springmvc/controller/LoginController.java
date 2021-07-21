package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.impl.UserServiceImp;


/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private UserServiceImp userServiceImp;
	

	@RequestMapping(value = {"/",""}, method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale, Model model) {
		request.getSession().invalidate();
		
		return "public/login";
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String login(@RequestParam(value="username") String username, 
			@RequestParam(value="passwd") String passwd, HttpServletRequest request, UserTour vo, Locale locale, Model model) {
		vo.setUsername(username);
		vo.setPasswd(passwd);
		UserTour user = userServiceImp.login(vo);
		int role = 0;
		String url = "redirect:client/login/";
		if(user!=null){
			role = user.getUser_role().getId();
			request.getSession().setAttribute("id", user.getId());
			System.out.print(user.getId());
		}
		if(user!=null && role == 1) {
			request.getSession().setAttribute("auth", "ADMIN");
			url = "redirect:/admin/dashboard";
		}
		if(user!=null && role == 2) {
			request.getSession().setAttribute("auth", "USER");
			url = "redirect:client/blog";
		}
		return url;		
	}
}
