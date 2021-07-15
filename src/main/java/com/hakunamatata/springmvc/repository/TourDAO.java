package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;

/**
 * @author Manh
 *
 */
public interface TourDAO extends DAO<Tour> {
	List<CatTour> getCattour();
	Tour getIdTour();
	List<Tour> getSearchTourVehicle(Tour tour);
	List<Tour> getSearchTourByDepartment(Tour vo);
	List<Tour> getSearchTourByCatTour(Tour vo);
	List<Tour> getSearchTourByHotel(Tour vo);
}
