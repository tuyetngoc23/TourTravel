package com.hakunamatata.springmvc.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.TourPlace;
import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.VehicleService;
import com.hakunamatata.springmvc.service.impl.DepartmentService;
import com.hakunamatata.springmvc.service.impl.DiscountService;
import com.hakunamatata.springmvc.service.impl.HotelService;
import com.hakunamatata.springmvc.service.impl.PlaceService;


/**
 * @author Huynh Thi Tuyet Ngoc
 * request.getHeader("REFERER"); 
 *
 */
@Controller
@RequestMapping("/tour")
//doing
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
	public String view(Model model, Locale locale) {
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
		
//		List<Tour> list = service.list(null);
//		model.addAttribute("listTour", list);
//		System.out.print(list);
		
		return "tour";
	}
//	@RequestParam(name="ngaykhoihanh") Date startday,
	@PostMapping(value={"","/"})
	public String search(Model model, Locale locale, @RequestParam(name="department") int departmentId,
			@RequestParam(name="cattour") int cattour, @RequestParam(name="desnitation") int desId,
			 @RequestParam(name="price") BigDecimal price,
			@RequestParam(name="hotel") int hotelId, @RequestParam(name="vehicle") int vehicleId) {
		
		view(model, locale);
		
		System.out.println("post");
		
		CatTour cat = new CatTour();
		cat.setId(cattour);
		
		Department department = new Department();
		department.setId(departmentId);
		
//		Province province = new Province();
//		province.setId(desId);
//		Place place = new Place();
//		place.setProvince(province);
//		TourPlace tourplace = new TourPlace();
//		tourplace.setPlace(place);
		
		Hotel hotel = new Hotel();
		hotel.setId(hotelId);
		
		Vehicle vehicle = new Vehicle();
		vehicle.setId(vehicleId);
		
		Tour tour = new Tour();
		tour.setCattour(cat);
		tour.setDepartment(department);
		//tourplace -> desID???
//		tour.setStart_day(startday);
//		tour.setPrice(price);
		tour.setHotel(hotel);
		tour.setVehicle(vehicle);
		
		List<Tour> listTourByVehicle = service.getSearchTourVehicle(tour);
//		List<Tour> listTourByDepartment = service.getSearchTourByDepartment(tour);
		
		if(listTourByVehicle != null || !listTourByVehicle.isEmpty()) {
			model.addAttribute("listTourByVehicle", listTourByVehicle);
		}
//		if(listTourByDepartment != null || !listTourByDepartment.isEmpty()) {
//			model.addAttribute("listTourByDepartment", listTourByDepartment);
//		}
		
		System.out.println(listTourByVehicle);
//		System.out.println(listTourByDepartment);
		
		return "tour";
	}
}
