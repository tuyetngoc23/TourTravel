package com.hakunamatata.springmvc.service;

import com.hakunamatata.springmvc.entity.LikeBlog;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface LikeBlogService extends ServiceInterface<LikeBlog>{
	void UpdateLike(int vo);
}
