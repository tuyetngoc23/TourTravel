package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.TourPlace;

/**
 * @author Manh
 *
 */
public interface TourPlaceDAO extends DAO<TourPlace>{
	void insert(List<TourPlace> list);
}
