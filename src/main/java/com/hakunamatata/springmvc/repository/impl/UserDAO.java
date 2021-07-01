package com.hakunamatata.springmvc.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.repository.DAO;

@Repository("userDAO")
public class UserDAO implements DAO<UserTour> {
	private static final Logger logger = 
			LoggerFactory.getLogger(UserDAO.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	// SQL
		private final String USERTOUR_INSERT= "insert into user_tour (username, passwd, cusname, phone, birthday, address, email) values (?,?,?,?,?,?,?)";
		private final String USERTOUR_UPDATE= "update user_tour set username=?, passwd=?, cusname=?, phone=?, birthday=?, address=?, email=?  where id=?";
		private final String USERTOUR_DELETE= "delete from user_tour where id=?";//use primary key
		private final String USERTOUR_GET= "select * from user_tour where id=?";
		private final String USERTOUR_LIST= "select * from user_tour";
	@Override
	public void insert(UserTour vo) {
		logger.info("insert : "+vo);
		jdbcTemplate.update(USERTOUR_INSERT, 
						vo.getUsername(), vo.getPasswd(), vo.getCusname(), vo.getPhone(), vo.getBirthday(), vo.getAddress(), vo.getEmail());
		
	}

	@Override
	public void update(UserTour vo) {
		logger.info("update :"+vo);
		jdbcTemplate.update(USERTOUR_UPDATE, 
				vo.getUsername(), vo.getPasswd(), vo.getCusname(), vo.getPhone(), vo.getBirthday(), vo.getAddress(), vo.getEmail(),
				vo.getId());
		
	}

	@Override
	public void delete(UserTour vo) {
		logger.info("delete :"+vo);
		jdbcTemplate.update(USERTOUR_DELETE, vo.getId());
		
	}

	@Override
	public UserTour get(UserTour vo) {
		logger.info("select one :"+vo);
		Object[] args = { vo.getId() };
		return jdbcTemplate.queryForObject(USERTOUR_GET, args, new UserTourRowMapper());
	}

	@Override
	public List<UserTour> list(UserTour vo) {
		logger.info("select all :"+vo);
		return jdbcTemplate.query(USERTOUR_LIST, new UserTourRowMapper());
	}

}
class UserTourRowMapper implements RowMapper<UserTour>{

	//ResultMap
	@Override
	public UserTour mapRow(ResultSet rs, int rowNum) {
		UserTour vo = new UserTour();
		try {
			vo.setId(rs.getInt("ID"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setUsername(rs.getString("USERNAME"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setPasswd(rs.getString("PASSWD"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setCusname(rs.getString("CUSNAME"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setPhone(rs.getString("PHONE"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setBirthday(rs.getDate("BIRTHDAY"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setAddress(rs.getString("ADDRESS"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setEmail(rs.getString("EMAIL"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return vo;
	}
}
