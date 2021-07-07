package com.hakunamatata.springmvc.entity;


/**
<<<<<<< HEAD
 * @author Huynh Thi Tuyet Ngoc
=======
 * @author BaoBB
>>>>>>> branch 'Bao' of https://gitlab.com/kits3/kits4/hakunamatata.git
 *
 */
public class Department {
	
	private int id;
	private String tourguide;
	private String address;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTourguide() {
		return tourguide;
	}
	public void setTourguide(String tourguide) {
		this.tourguide = tourguide;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Department [id=" + id + ", tourguide=" + tourguide + ", address=" + address + "]";
	}
	
	
}
