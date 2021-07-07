package com.hakunamatata.springmvc.controller;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.service.TourService;

@Controller
@RequestMapping("admin/tour")

public class TourController {
	@Autowired
	private TourService service;
	@GetMapping(value = {"","/"})
//	@ResponseBody
	public String list(Model model,Locale locale) {
		List<Tour> list = service.list(null);
		model.addAttribute("listTour", list);
		
		return "admin/tour/list";
//		 return new ResponseEntity<List<Tour>>(list, HttpStatus.OK);
	}
	
	@GetMapping(value = "/new")
	public String write(Model model,Locale locale) {
		
		
		return "admin/tour/new";
	
	}
	@PostMapping("/new")
	public String insert(Tour tour,MultipartFile uploadFile,
			@RequestParam("startday") @DateTimeFormat(pattern="yyyy-MM-dd") Date start_day,
			@RequestParam("endday") @DateTimeFormat(pattern="yyyy-MM-dd") Date end_day,
			@RequestParam(value = "location_go") int location_go,
			@RequestParam(value = "carttour_id") int carttour_id,
			@RequestParam(value = "hotel_id") int hotel_id,
			@RequestParam(value = "vehicle_id") int vehicle_id,
			@RequestParam(value = "discount_id") int[] discount_id,
			@RequestParam(value = "place_id") int[] place_id,
			Model model,Locale locale){
		System.out.println(tour);
		for(int a : discount_id) {
			System.out.println(a + "||");
		}
	
		return "redirect:/admin/tour";
	}
	@GetMapping(value = "/edit")
	public String edit(Model model,Locale locale) {
		
			
		return "admin/tour/edit";
	
	}
}
