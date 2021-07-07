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

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.VehicleService;
import com.hakunamatata.springmvc.service.impl.DepartmentService;
import com.hakunamatata.springmvc.service.impl.DiscountService;
import com.hakunamatata.springmvc.service.impl.HotelService;
import com.hakunamatata.springmvc.service.impl.PlaceService;

@Controller
@RequestMapping("admin/tour")

public class TourController {
	@Autowired
	private TourService service;
	@Autowired
	private PlaceService placeService;
	@Autowired 
	private DiscountService discountService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private HotelService hotelService;
	@Autowired 
	private VehicleService vehcleService;
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
		List<Province> listProvinces = placeService.listProvince(null);
		List<Place> Places = placeService.list(null);
		List<Discount> discounts = discountService.list(null);
		List<Department> departments = departmentService.list(null);
		List<CatTour> catTours = service.getCattour();
		List<Hotel> hotels = hotelService.list(null);
		List<Vehicle> vehicles = vehcleService.list(null);
		System.out.println(vehicles);
		model.addAttribute("listProvince", listProvinces);
		model.addAttribute("listPlaces", Places);
		model.addAttribute("listDiscount", discounts);
		model.addAttribute("listDispartment", departments);
		model.addAttribute("listCatTours", catTours);
		model.addAttribute("listHotels", hotels);
		model.addAttribute("listVehicles", vehicles);
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
