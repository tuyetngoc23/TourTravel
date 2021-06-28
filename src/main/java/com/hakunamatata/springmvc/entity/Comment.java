package com.hakunamatata.springmvc.entity;




public class Comment {
	
	private int id;
	private String content;
	
	
	private int usertour_id;
	private int blog_id;
	
	
	public int getUsertour_id() {
		return usertour_id;
	}
	public void setUsertour_id(int usertour_id) {
		this.usertour_id = usertour_id;
	}
	public int getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(int blog_id) {
		this.blog_id = blog_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
