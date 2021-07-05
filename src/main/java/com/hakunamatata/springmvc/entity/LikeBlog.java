package com.hakunamatata.springmvc.entity;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class LikeBlog {
	
	private int id;
	
	private Blog blog;
	private UserTour usertour;
	

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	public UserTour getUsertour() {
		return usertour;
	}

	public void setUsertour(UserTour usertour) {
		this.usertour = usertour;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
