package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/blog")
public class BlogClientController {
	
	@GetMapping({"", "/"})
	public String view(Model model, Locale locale) {
		return "blog";
	}
}
