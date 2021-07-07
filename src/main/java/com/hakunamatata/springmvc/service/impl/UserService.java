package com.hakunamatata.springmvc.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.repository.impl.UserDAO;

/**
 * @author Hai Van
 *
 */
@Service("userService")
//@Transactional
public class UserService {
	@Autowired
	private UserDAO	userDao;

	public void insertUserTour(UserTour vo) {
		// vaildation, mispatch, wrong
		userDao.insert(vo);
	}
	public void deleteUserTour(UserTour vo) {
		userDao.delete(vo);
	}
	public void updateUserTour(UserTour vo) {
		userDao.update(vo);
	}
	public UserTour getUserTour(UserTour vo) {
		return userDao.get(vo);
	}
	public List<UserTour> listUserTour(UserTour vo) {
		return userDao.list(vo);
	}
}
