package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Comment;
import com.hakunamatata.springmvc.service.CommentService;
import com.hakunamatata.springmvc.service.ServiceInterface;
import com.hakunamatata.springmvc.service.impl.CommentServiceImpl;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
@Controller
@RequestMapping("/blogdetail")
public class BlogDetailController {
	
	@Autowired
	private ServiceInterface<Blog> blogService;
	@Autowired
	private CommentService commentService;
	
	@GetMapping({"","/"})
	public String view(Model model, Locale locale, @RequestParam("id") int id) {
		
		Blog vo = new Blog();
		vo.setId(id);
		
		Blog blog = blogService.get(vo);
		model.addAttribute("getBlog", blog);
		
		List<Blog> list = blogService.list(null);
		model.addAttribute("list", list);
		
		List<Comment> commentList = commentService.listComment(id);
		model.addAttribute("commentList", commentList);
		System.out.println(commentList);
		
		return "blogdetail";
	}
	
	@PostMapping({"", "/"})
	public String comment(Model model, Locale locale, @RequestParam("id") int id,
						@RequestParam("message") String content) {
		
		view(model, locale, id);
		
		Blog vo = new Blog();
		vo.setId(id);
		Comment comment = new Comment();
		comment.setContent(content);
		comment.setBlog(vo);
		
		commentService.insert(comment);
		
		view(model, locale, id);
		
		return "blogdetail";
	}
}
