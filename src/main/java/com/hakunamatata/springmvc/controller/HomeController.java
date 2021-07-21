package com.hakunamatata.springmvc.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.service.ServiceInterface;
import com.hakunamatata.springmvc.service.TourService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private TourService service;
	@Autowired
	private ServiceInterface<Blog> blogService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {		
		
		List<Tour> list = service.list(null);
		model.addAttribute("list", list);
		
		List<Blog> listBlog = blogService.list(null);
		model.addAttribute("listBlog", listBlog);
		
		return "public/index";
	}
	
}
