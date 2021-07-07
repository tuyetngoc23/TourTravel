package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.Blog;
/**
 * @author Hai Van
 *
 */
public interface BlogServiceInterface <T> extends DAOService<T> {
	
		List<Blog> listBlog(Blog vo);
}
