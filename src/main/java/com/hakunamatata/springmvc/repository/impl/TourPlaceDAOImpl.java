package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.TourPlace;
import com.hakunamatata.springmvc.repository.TourPlaceDAO;
/**
 * @author Manh
 *
 */
@Repository
public class TourPlaceDAOImpl implements TourPlaceDAO {
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(TourPlace vo) {
		session.insert("TourPlace.insert",vo);

	}

	@Override
	public void update(TourPlace vo) {
		session.update("TourPlace.update",vo);

	}

	@Override
	public void delete(TourPlace vo) {
		session.delete("TourPlace.delete",vo);

	}

	@Override
	public TourPlace get(TourPlace vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TourPlace> list(TourPlace vo) {
		// TODO Auto-generated method stub
		return session.selectList("TourPlace.getList", null);
	}

	@Override
	public void insert(List<TourPlace> list) {
		session.insert("TourPlace.insert",list);
		
	}

}
