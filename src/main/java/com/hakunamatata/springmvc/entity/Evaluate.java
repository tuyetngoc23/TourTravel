package com.hakunamatata.springmvc.entity;

import java.util.Date;




public class Evaluate {
	
	private int id;
	private String content;
	private Date wdate;
	
	
	private UserTour user;
	private Tour tour;
	
	
	public UserTour getUser() {
		return user;
	}
	public void setUser(UserTour user) {
		this.user = user;
	}
	public Tour getTour() {
		return tour;
	}
	public void setTour(Tour tour) {
		this.tour = tour;
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
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
}
