package com.hakunamatata.springmvc.entity;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Comment {
	
	@Override
	public String toString() {
		return "Comment [id=" + id + ", content=" + content + ", usertour=" + usertour + ", blog=" + blog + "]";
	}
	private int id;
	private String content;
	
	
	private UserTour usertour;
	private Blog blog;
	
	
	
	public UserTour getUsertour() {
		return usertour;
	}
	public void setUsertour(UserTour usertour) {
		this.usertour = usertour;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
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
