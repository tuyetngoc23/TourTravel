package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
//import java.time.LocalDateTime;
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

/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("/hotel")
public class HotelController {
	@Autowired
	private ServiceInterface<Hotel> hotelService;
	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Hotel> list = hotelService.list(null);
		model.addAttribute("hotelList",list);
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
	public String regis(Locale locale, Model model) {
		return "admin/hotel/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(MultipartFile uploadfile, Hotel vo, Locale locale, Model model) {
		System.out.println(uploadfile);
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			// realPath
			try {
				uploadfile.transferTo(
						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-hotel\\"
									+fileName)
				);
				vo.setImage(fileName);
				System.out.println(vo);
				hotelService.insert(vo);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}		
		return "redirect:/hotel/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id, Locale locale, Model model) {
		Hotel vo = new Hotel();
		vo.setId(id.intValue());
		Hotel hotel = hotelService.get(vo);
		model.addAttribute("hotelOne",hotel);
		System.out.println(hotel);
		return "admin/hotel/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value="image1") String image, MultipartFile uploadfile, Hotel vo, Locale locale, Model model) {
		System.out.println(uploadfile);
		String fileName = uploadfile.getOriginalFilename();
		if(!uploadfile.isEmpty()) {
			// realPath
			try {
				uploadfile.transferTo(
						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-hotel\\"
									+fileName)
				);
				vo.setImage(fileName);
				System.out.println(vo);
				hotelService.update(vo);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			vo.setImage(image);
			System.out.println(vo);
			hotelService.update(vo);
		}	
		return "redirect:/hotel/";
	}
	
}
