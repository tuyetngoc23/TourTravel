package com.hakunamatata.springmvc.controller;

import java.sql.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.UserService;
/**
 * @author Hai Van
 *
 */
@Controller
@RequestMapping("admin/user")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<UserTour> list = userService.list(null);
		model.addAttribute("userList",list);
		System.out.println(list);
		return "admin/user/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		UserTour vo = new UserTour();
		vo.setId(id.intValue());
		userService.delete(vo);
		return "redirect:/admin/user/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {
		return "admin/user/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "birthday")Date date,MultipartFile uploadfile, UserTour vo, Locale locale, Model model) {
		vo.setBirthday(date);
		System.out.println(vo);
//		if(!uploadfile.isEmpty()) {
//			String fileName = uploadfile.getOriginalFilename();
//			// realPath
//			try {
//				uploadfile.transferTo(
//						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-place\\"
//									+fileName)
//				);
//				vo.setImage(fileName);
//
//			} catch (IllegalStateException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
		userService.insert(vo);		
		return "redirect:/admin/user/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		UserTour vo = new UserTour();
		vo.setId(id.intValue());
		UserTour user = userService.get(vo);
		model.addAttribute("userOne",user);
		return "admin/user/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value="image1") String image, @RequestParam(value = "wdate1")Date date,MultipartFile uploadfile, UserTour vo, Locale locale, Model model) {
		vo.setBirthday(date);
		System.out.println(vo);
//		if(!uploadfile.isEmpty()) {
//			String fileName = uploadfile.getOriginalFilename();
//			// realPath
//			try {
//				uploadfile.transferTo(
//						new File("C:\\Users\\BaoBB\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-place\\"
//									+fileName)
//				);
//				vo.setImage(fileName);
//
//			} catch (IllegalStateException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}else {
//		vo.setImage(image);
//	}
		userService.update(vo);		
		return "redirect:/admin/user/";
	}
}
