package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/place")
public class PlaceController {
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {

		return "admin/place/list";// /WEB_INF/views/article/home.jsp
	}

	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		
		return "admin/place/new";
	}

	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Locale locale, Model model) {
		
		return "admin/place/edit";
	}
}
