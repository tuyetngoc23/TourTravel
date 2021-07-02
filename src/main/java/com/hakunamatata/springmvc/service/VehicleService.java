/**
 * @author Manh
 * 
 * */
package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.Vehicle;

public interface VehicleService {
	public List<Vehicle> getList();
	public Vehicle get(Vehicle vo);
	public void update(Vehicle vo);
	public void delete(Vehicle vo);
	public void insert(Vehicle vo);
}
