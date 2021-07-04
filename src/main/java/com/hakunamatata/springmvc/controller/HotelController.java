package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.service.ServiceInterface;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	@Autowired
	private ServiceInterface<Hotel> hotelService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Hotel> list = hotelService.list(null);
		model.addAttribute("hotelList",list);
		//System.out.println(list);
		return "admin/hotel/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Hotel vo = new Hotel();
		vo.setId(id.intValue());
		hotelService.delete(vo);
		System.out.println(vo);
		return "redirect:/hotel/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		return "admin/hotel/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String edit(Hotel vo, Locale locale, Model model) {
		System.out.println(vo);
		hotelService.insert(vo);
//		if( !vo.getImage().isEmpty() ) {
//			System.out.println(vo.getImage());
////			String fileName = image.getOriginalFilename();
////			String name = image.getName();
////			String type = image.getContentType();
////			System.out.println(fileName+","+name+","+type);
////			// realPath
//			try {
//				vo.getImage().transferTo(
//						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-hotel"
//									+ vo.getImage().getOriginalFilename())
//				);
//			} catch (IllegalStateException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
		return "redirect:/hotel/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Locale locale, Model model) {
		
		return "admin/hotel/edit";
	}
	
}
