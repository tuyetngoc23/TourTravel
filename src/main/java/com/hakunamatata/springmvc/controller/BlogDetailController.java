package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Comment;
import com.hakunamatata.springmvc.entity.LikeBlog;
import com.hakunamatata.springmvc.service.CommentService;
import com.hakunamatata.springmvc.service.LikeBlogService;
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
	@Autowired
	private LikeBlogService likeBlogService;
	
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
						@RequestParam(name = "message", required = false) String content,
						@RequestParam(name="amount", required = false, defaultValue = "0") int amount) {
		
		view(model, locale, id);
		
		Blog vo = new Blog();
		vo.setId(id);
		Comment comment = new Comment();
		comment.setContent(content);
		comment.setBlog(vo);
		
		if(content != null) {
			commentService.insert(comment);
		}
		
		LikeBlog likeBlog = new LikeBlog();
		likeBlog.setBlog(vo);
		if(amount > vo.getLike_amount()) {
			likeBlogService.insert(likeBlog);
			likeBlogService.UpdateLike(amount);
		}
		
		view(model, locale, id);
		
		return "blogdetail";
	}
}
