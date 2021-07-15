package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.repository.impl.UserDAO;
import com.hakunamatata.springmvc.service.ServiceInterface;
/**
 * @author Hai Van
 *
 */

@Service
//@Transactional
public class UserService implements ServiceInterface<UserTour>{
	
	@Autowired
	private UserDAO	userDao;

	@Override
	public void insert(UserTour vo) {
		userDao.insert(vo);
	}

	@Override
	public void update(UserTour vo) {
		userDao.update(vo);
	}

	@Override
	public void delete(UserTour vo) {
		userDao.delete(vo);
	}

	@Override
	public UserTour get(UserTour vo) {
		return userDao.get(vo);
	}

	@Override
	public List<UserTour> list(UserTour vo) {
		return userDao.list(vo);
	}

}
