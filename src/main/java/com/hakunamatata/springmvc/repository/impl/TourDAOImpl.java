package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.repository.TourDAO;
/**
 * @author Manh
 *
 */
@Repository
public class TourDAOImpl implements TourDAO{
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void insert(Tour vo) {
		session.insert("Tour.insert", vo);
	
		
	}

	@Override
	public void update(Tour vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Tour vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Tour get(Tour vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Tour> list(Tour vo) {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getList", null);
	}

	@Override
	public List<CatTour> getCattour() {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getListCart",null);
	}

	@Override
	public Tour getIdTour() {
		// TODO Auto-generated method stub
		return session.selectOne("Tour.selectTourId",null);
	}

	



}
