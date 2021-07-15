package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.TourPlace;

/**
 * @author Manh
 *
 */
public interface TourPlaceSerivce extends ServiceInterface<TourPlace>{
	void insert(List<TourPlace> list);
	void delete(List<TourPlace> list);
}
