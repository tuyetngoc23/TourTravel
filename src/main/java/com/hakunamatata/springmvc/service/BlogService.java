package com.hakunamatata.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.repository.impl.BlogDAO;


@Service("blogService")
//@Transactional
public class BlogService {
	@Autowired
	private BlogDAO	blogDao;

	public void insertBlog(Blog vo) {
		// vaildation, mispatch, wrong
		blogDao.insert(vo);
	}
	public void deleteBlog(Blog vo) {
		blogDao.delete(vo);
	}
	public void updateBlog(Blog vo) {
		blogDao.update(vo);
	}
	public Blog getBlog(Blog vo) {
		return blogDao.get(vo);
	}
	public List<Blog> listBlog(Blog vo) {
		return blogDao.list(vo);
	}
}
