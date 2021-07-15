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
}
