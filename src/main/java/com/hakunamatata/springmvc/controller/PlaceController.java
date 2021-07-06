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

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.service.impl.PlaceService;

/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("/place")
public class PlaceController {
	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Place> list = placeService.list(null);
		model.addAttribute("placeList",list);
		return "admin/place/list";// /WEB_INF/views/article/home.jsp
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Place vo = new Place();
		vo.setId(id.intValue());
		placeService.delete(vo);
		System.out.println(vo);
		return "redirect:/place/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {
		List<Province> list = placeService.listProvince(null);
		model.addAttribute("provinceList",list);
		return "admin/place/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(MultipartFile uploadfile, Place vo, Locale locale, Model model) {
		System.out.println(uploadfile);
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			// realPath
			try {
				uploadfile.transferTo(
						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-place\\"
									+fileName)
				);
				vo.setImage(fileName);
				System.out.println(vo);				
				placeService.insert(vo);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}	
		return "redirect:/place/";
	}
	
	
	

	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id, Locale locale, Model model) {
		Place vo = new Place();
		vo.setId(id.intValue());
		Place place = placeService.get(vo);
		model.addAttribute("placelOne",place);
		List<Province> list = placeService.listProvince(null);
		model.addAttribute("provinceList",list);
		return "admin/place/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value="image1") String image, MultipartFile uploadfile, Place vo, Locale locale, Model model) {
		System.out.println(uploadfile);
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			// realPath
			try {
				uploadfile.transferTo(
						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-place\\"
									+fileName)
				);
				vo.setImage(fileName);
				System.out.println(vo);				
				placeService.update(vo);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			vo.setImage(image);
			System.out.println(vo);
			placeService.update(vo);
		}	
		return "redirect:/place/";
	}
}
