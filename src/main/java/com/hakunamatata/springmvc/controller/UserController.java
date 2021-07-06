package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {

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
						new File("C:\\Users\\Administrator\\git\\hakunamatata\\src\\main\\webapp\\uploads\\"
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
