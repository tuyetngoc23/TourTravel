package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.repository.TourDAO;
import com.hakunamatata.springmvc.service.TourService;
@Service
public class TourServiceImpl implements TourService{
	@Autowired 
	private TourDAO dao;
	@Override
	public void insert(Tour vo) {
		dao.insert(vo);
		
	}

	@Override
	public void update(Tour vo) {
		dao.update(vo);
		
	}

	@Override
	public void delete(Tour vo) {
		dao.delete(vo);
		
	}

	@Override
	public Tour get(Tour vo) {
		// TODO Auto-generated method stub
		return dao.get(vo);
	}

	@Override
	public List<Tour> list(Tour vo) {
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

	@Override
	public List<CatTour> getCattour() {
		// TODO Auto-generated method stub
		return dao.getCattour();
	}

	@Override
	public Tour getTourId() {
		// TODO Auto-generated method stub
		return dao.getIdTour();
	}

	



}
