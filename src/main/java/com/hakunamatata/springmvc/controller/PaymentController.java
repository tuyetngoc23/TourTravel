package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Book;
import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.TicketService;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.impl.UserServiceImp;


/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("payment")
public class PaymentController {
	@Autowired
	private TourService tourservice;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private UserServiceImp userServiceImp;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(
			@RequestParam(value = "aldult_amount") int aldult_amount,
			@RequestParam(value = "child_amount") int child_amount,
			@RequestParam(value = "child_nho_amount") int child_nho_amount,
			int book_id,
			int tour_id,
			Locale locale, Model model,
			HttpServletRequest request) {
		model.addAttribute("aldult_amount", aldult_amount);
		model.addAttribute("child_amount", child_amount);
		model.addAttribute("child_nho_amount", child_nho_amount);
		model.addAttribute("book_id", book_id);
//		model.addAttribute("tour_id", tour_id);
		List<Ticket> list= ticketService.listTicketByBookId(book_id);
		model.addAttribute("ticket", list);
		HttpSession session = request.getSession();
		Integer userId = (Integer)session.getAttribute("id");
		UserTour vo = new UserTour();
		vo.setId(userId.intValue());	
		UserTour userr=	userServiceImp.get(vo);
		model.addAttribute("user",userr);
		Tour vo1 = new Tour();
		vo1.setId(tour_id);
		Tour tour = tourservice.get(vo1);
		model.addAttribute("tour",tour);
		System.out.println(tour);
		return "/payment";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(int book_id, Locale locale, Model model) {
		ticketService.updateState(book_id);
		
		return "redirect:/home";
	}
}


