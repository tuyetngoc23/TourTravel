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
import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.repository.DAO;


@Repository("blogDAO")
public class BlogDAO implements DAO<Blog> {
	private static final Logger logger = 
			LoggerFactory.getLogger(BlogDAO.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	// SQL
		private final String BLOG_INSERT= "insert into blog (title,wname,content) values (?,?,?)";
		private final String BLOG_UPDATE= "update blog set title=?,name=?, content=?  where id=?";
		private final String BLOG_DELETE= "delete from blog where id=?";//use primary key
		private final String BLOG_GET= "select * from blog where id=?";
		private final String BLOG_LIST= "select * from blog";
	
	@Override
	public void insert(Blog vo) {
		logger.info("insert : "+vo);
		jdbcTemplate.update(BLOG_INSERT, 
						vo.getTitle(), vo.getContent(), vo.getWname());
		
	}

	@Override
	public void update(Blog vo) {
		logger.info("update :"+vo);
		jdbcTemplate.update(BLOG_UPDATE, 
				vo.getTitle(), vo.getContent(), vo.getWname(),
				vo.getId());
		
	}

	@Override
	public void delete(Blog vo) {
		logger.info("delete :"+vo);
		jdbcTemplate.update(BLOG_DELETE, vo.getId());
		
	}

	@Override
	public Blog get(Blog vo) {
		logger.info("select one :"+vo);
		Object[] args = { vo.getId() };
		return jdbcTemplate.queryForObject(BLOG_GET, args, new BlogRowMapper());
	}

	@Override
	public List<Blog> list(Blog vo) {
		logger.info("select all :"+vo);
		return jdbcTemplate.query(BLOG_LIST, new BlogRowMapper());
	}

}
class BlogRowMapper implements RowMapper<Blog>{

	//ResultMap
	@Override
	public Blog mapRow(ResultSet rs, int rowNum) {
		Blog vo = new Blog();
		try {
			vo.setId(rs.getInt("ID"));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			vo.setTitle(rs.getString("TITLE"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setWname(rs.getString("WNAME"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setContent(rs.getString("CONTENT"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			vo.setWdate(rs.getDate("WDATE"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	
}