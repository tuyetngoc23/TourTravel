package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.UserTour;
//import com.hakunamatata.springmvc.service.impl.BlogService;
//import com.hakunamatata.springmvc.service.impl.UserService;

/**
 * @author Hai Van
 *
 */
@Controller
@RequestMapping("/admin/user")
//doing
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
//	@Autowired
//	private UserService userService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		logger.info("user list {}.", locale);		
//		List<UserTour> list = userService.listUserTour(null);
//		model.addAttribute("UserList",list);
		return "admin/user/list";
	}

	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		
		return "admin/user/new";
	}

	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Locale locale, Model model) {
		
		return "admin/user/edit";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="no") Integer aid,
			Locale locale, Model model) {
		logger.info("user delete {}.", locale);
		UserTour vo = new UserTour();
		//vo.setId(id.intValue());		
//		userService.deleteUserTour(vo);
		return "admin/blog/list";
	}	
	
	
	
	@RequestMapping(value = "/fileupload", method = RequestMethod.GET)
	public String fileform(Locale locale, Model model) {
		logger.info("get : fileform");
		return "form";
	}
	
	@RequestMapping(value = "/fileupload", method = RequestMethod.POST)
	public String savefile(MultipartFile uploadfile, Locale locale, Model model) {
		logger.info("post : savefile");
		if( !uploadfile.isEmpty() ) {
			String fileName = uploadfile.getOriginalFilename();
			String name = uploadfile.getName();
			String type = uploadfile.getContentType();
			logger.info(fileName+","+name+","+type);
			// realPath
			try {
				uploadfile.transferTo(
						new File("C:\\Users\\Administrator\\git\\hakunamatata\\src\\main\\webapp\\uploads\\image-user\\"
									+ uploadfile.getOriginalFilename())
				);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/";
	}

}
