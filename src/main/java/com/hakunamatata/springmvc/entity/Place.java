package com.hakunamatata.springmvc.entity;



	
public class Place {
	
	private int id;
	private String name;
	private int province_id;
	private String address;
	private String image;

	
	private Province province;
	
	
	@Override
	public String toString() {
		return "Place [id=" + id + ", name=" + name + ", province_id=" + province_id + ", address=" + address
				+ ", image=" + image + ", province=" + province + "]";
	}

	
	public int getProvince_id() {
		return province_id;
	}
	public void setProvince_id(int province_id) {
		this.province_id = province_id;
	}

	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
}
