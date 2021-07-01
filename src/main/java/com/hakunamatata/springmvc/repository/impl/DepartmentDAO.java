package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.repository.DAO;
@Repository("departmentDAO")
public class DepartmentDAO implements DAO<Department> {
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Department vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Department vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Department vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Department get(Department vo) {
		return (Department)session.selectOne("Department.selectOne", vo);
	}

	@Override
	public List<Department> list(Department vo) {
		// TODO Auto-generated method stub
		return session.selectList("Department.selectList",vo);
	}

}
