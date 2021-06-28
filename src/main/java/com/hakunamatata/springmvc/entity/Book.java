package com.hakunamatata.springmvc.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private BigDecimal total_money;
	private int child_amount;
	private int aldult_amount;
	private int child_nho_amount;
	private Date date;
	
	private int usertour_id;
	private int tour_id;
	
	public int getUsertour_id() {
		return usertour_id;
	}
	public void setUsertour_id(int usertour_id) {
		this.usertour_id = usertour_id;
	}
	public int getTour_id() {
		return tour_id;
	}
	public void setTour_id(int tour_id) {
		this.tour_id = tour_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public BigDecimal getTotal_money() {
		return total_money;
	}
	public void setTotal_money(BigDecimal total_money) {
		this.total_money = total_money;
	}
	public int getChild_amount() {
		return child_amount;
	}
	public void setChild_amount(int child_amount) {
		this.child_amount = child_amount;
	}
	public int getAldult_amount() {
		return aldult_amount;
	}
	public void setAldult_amount(int aldult_amount) {
		this.aldult_amount = aldult_amount;
	}
	public int getChild_nho_amount() {
		return child_nho_amount;
	}
	public void setChild_nho_amount(int child_nho_amount) {
		this.child_nho_amount = child_nho_amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
