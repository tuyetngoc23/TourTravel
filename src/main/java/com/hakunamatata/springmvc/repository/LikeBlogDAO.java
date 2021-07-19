package com.hakunamatata.springmvc.repository;

import com.hakunamatata.springmvc.entity.LikeBlog;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface LikeBlogDAO extends DAO<LikeBlog>{
	void UpdateLike(int vo);
}
