package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;

public interface TourDAO extends DAO<Tour> {
	List<CatTour> getCattour();
}
