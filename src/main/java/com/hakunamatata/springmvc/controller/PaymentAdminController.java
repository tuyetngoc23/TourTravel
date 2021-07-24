package com.hakunamatata.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hakunamatata.springmvc.entity.Payment;
import com.hakunamatata.springmvc.service.BookService;
import com.hakunamatata.springmvc.service.impl.PaymentServiceImpl;

@Controller
@RequestMapping("admin/payment")
public class PaymentAdminController {
	@Autowired 
	private PaymentServiceImpl paymentServiecImpl;
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public  String list(Model model) {
		List<Payment> list = paymentServiecImpl.list(null);
		model.addAttribute("paymentList", list);
		return "admin/payment/list";
		
	}
}
