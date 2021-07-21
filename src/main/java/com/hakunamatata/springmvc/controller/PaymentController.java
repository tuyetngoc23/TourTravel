package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("payment")
public class PaymentController {
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		return "public/payment";
	}
}
