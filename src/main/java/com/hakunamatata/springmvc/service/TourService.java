package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;

/**
 * @author Manh
 *
 */
public interface TourService extends ServiceInterface<Tour>{
	List<CatTour> getCattour();
	Tour getTourId();
	List<Tour> getSearchTourVehicle(Tour tour);
	List<Tour> getSearchTourByDepartment(Tour tour);
	List<Tour> getSearchTourByCatTour(Tour tour);
	List<Tour> getSearchTourByHotel(Tour tour);
}
