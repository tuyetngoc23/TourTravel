package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
@RequestMapping("/tour")
public class TourClientController {
	
	@Autowired
	private TourService service;
	
	@Autowired
	private PlaceService placeService;
	
	@Autowired 
	private DiscountService discountService;
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired 
	private VehicleService vehcleService;
	
	@Autowired
	private DepartmentService departmentService;
	
	@GetMapping(value={"","/"})
	public String view(Locale locale, Model model) {
		List<Province> listProvinces = placeService.listProvince(null);
		model.addAttribute("listProvince", listProvinces);
		
		List<Discount> discounts = discountService.list(null);
		model.addAttribute("listDiscount", discounts);
		
		List<CatTour> catTours = service.getCattour();
		model.addAttribute("listCatTours", catTours);
		
		List<Hotel> hotels = hotelService.list(null);
		model.addAttribute("listHotels", hotels);
		
		List<Vehicle> vehicles = vehcleService.list(null);
		model.addAttribute("listVehicles", vehicles);
		
		List<Department> departments = departmentService.list(null);
		model.addAttribute("listDepartment", departments);
		
		List<Tour> list = service.list(null);
		model.addAttribute("listTour", list);
		System.out.print(list);
		
		return "tour";
	}
}
