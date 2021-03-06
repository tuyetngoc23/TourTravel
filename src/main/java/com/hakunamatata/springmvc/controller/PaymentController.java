package com.hakunamatata.springmvc.controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Book;
import com.hakunamatata.springmvc.entity.Payment;
import com.hakunamatata.springmvc.entity.PaymentType;
import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.BookService;
import com.hakunamatata.springmvc.service.TicketService;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.impl.PaymentServiceImpl;
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
	@Autowired
	private  BookService bookservice;
	@Autowired
	private PaymentServiceImpl paymentServiceImp;
	
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(int tour_payment_type, int aldult_amount, int child_amount, int child_nho_amount,
			int book_id, int tour_id, Locale locale, Model model,
			HttpServletRequest request, RedirectAttributes redirectAttributes) {
		model.addAttribute("aldult_amount", aldult_amount);
		model.addAttribute("child_amount", child_amount);
		model.addAttribute("child_nho_amount", child_nho_amount);
		model.addAttribute("tour_payment_type", tour_payment_type);
		model.addAttribute("book_id", book_id);
		model.addAttribute("tour_id", tour_id);
		Book book = new Book();
		book.setId(book_id);
		book = bookservice.get(book);
		model.addAttribute("book", book);
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
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);
		
		return "/public/payment";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(int tour_payment_type, int book_id, Locale locale, Model model
			, int aldult_amount, int child_amount, int total_money, int child_nho_amount
			, int tour_id, RedirectAttributes redirectAttributes) {
		String url = "redirect:/";
		switch(tour_payment_type) {
			case 1:
				url = "redirect:/payment/fail";
				break;
			case 2:				
				url = "redirect:/payment/succcesss";
				break;
		}
		redirectAttributes.addAttribute("tour_payment_type", tour_payment_type);
		redirectAttributes.addAttribute("total_money", total_money);
		redirectAttributes.addAttribute("book_id", book_id);
		redirectAttributes.addAttribute("tour_id", tour_id);
		redirectAttributes.addAttribute("aldult_amount", aldult_amount);
		redirectAttributes.addAttribute("child_amount", child_amount);
		redirectAttributes.addAttribute("child_nho_amount", child_nho_amount);
		return url;
	}
	
	@RequestMapping(value = {"succcesss"}, method = RequestMethod.GET)
	public String success(int aldult_amount, int child_amount, int child_nho_amount,
			int book_id, int tour_id, BigDecimal total_money, int tour_payment_type,
			Locale locale, Model model,
			HttpServletRequest request) {
		model.addAttribute("aldult_amount", aldult_amount);
		model.addAttribute("child_amount", child_amount);
		model.addAttribute("child_nho_amount", child_nho_amount);
		model.addAttribute("total_money", total_money);
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
		ticketService.updateState(book_id);
		Payment payment = new Payment();
		payment.setQuantity(child_nho_amount+child_amount+aldult_amount);
		payment.setTotalprice(total_money);
		Book book = new Book();
		book.setId(book_id);
		payment.setBook(book);
		PaymentType paymenttype = new PaymentType();
		paymenttype.setId(tour_payment_type);
		payment.setPayment_type(paymenttype);
		System.out.println(payment);
		paymentServiceImp.insert(payment);
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);
		
		return "/public/paymentsuccess";
	}
	
	@RequestMapping(value = {"fail"}, method = RequestMethod.GET)
	public String fail(int aldult_amount, int child_amount, int child_nho_amount,
			int book_id, int tour_id, int total_money, Locale locale, Model model,
			HttpServletRequest request) {
		model.addAttribute("aldult_amount", aldult_amount);
		model.addAttribute("child_amount", child_amount);
		model.addAttribute("child_nho_amount", child_nho_amount);
		model.addAttribute("total_money", total_money);
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
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);
		
		return "/public/paymentfail";
	}
}


