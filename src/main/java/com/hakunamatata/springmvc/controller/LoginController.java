package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import net.sf.cglib.core.Local;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	//doing
	@GetMapping(value = "/login")
	public String login(Locale locale, Model model) {
		return "login";
	}
}
