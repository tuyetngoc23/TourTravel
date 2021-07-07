package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

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
	ServletContext servletContext;
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
	public String insert(Tour tour,
				@RequestParam("startday") @DateTimeFormat(pattern="yyyy-MM-dd") Date start_day,
				@RequestParam("endday") @DateTimeFormat(pattern="yyyy-MM-dd") Date end_day,
				@RequestParam(value = "location_go") int location_go,
				@RequestParam(value = "carttour_id") int carttour_id,
				@RequestParam(value = "hotel_id") int hotel_id,
				@RequestParam(value = "vehicle_id") int vehicle_id,
				@RequestParam(value = "discount_id") int[] discount_ids,
				@RequestParam(value = "place_id") int[] place_ids,
				MultipartFile imageTour ,
				Model model,Locale locale){
		
			tour.setStart_day(start_day);
			tour.setEnd_day(end_day);
			Department department = new Department();
			department.setId(location_go);
			tour.setDepartment(department);
			CatTour catTour = new CatTour();
			catTour.setId(carttour_id);
			tour.setCattour(catTour);
			Hotel hotel =new Hotel();
			hotel.setId(hotel_id);
			tour.setHotel(hotel);
			Vehicle vehicle = new Vehicle();
			vehicle.setId(vehicle_id);
			tour.setVehicle(vehicle);
			
			
			List<Discount> lisDiscounts =null;
			if(discount_ids != null) {
				lisDiscounts = new ArrayList<Discount>();
				Discount discount =new Discount();
				for(int id : discount_ids) {
					discount.setId(id);
					lisDiscounts.add(discount);
				}
				tour.setDiscount(lisDiscounts);
			}
			List<Place> lisPlaces =null;
			if(place_ids != null) {
				lisPlaces = new ArrayList<Place>();
				Place Place =new Place();
				for(int id : place_ids) {
					Place.setId(id);
					lisPlaces.add(Place);
				}
				tour.setPlace(lisPlaces);
			}
		
			
			
		if(!imageTour.isEmpty()) {
			String fileName = imageTour.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadTour"));
			
			try {
				imageTour.transferTo(new File(realPath+ File.separator + fileName));
				System.out.println(realPath+ File.separator + fileName);
				tour.setImage(fileName);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println(tour);
		return "redirect:/admin/tour";
	}
	@GetMapping(value = "/edit")
	public String edit(Model model,Locale locale) {
		
			
		return "admin/tour/edit";
	
	}
}
