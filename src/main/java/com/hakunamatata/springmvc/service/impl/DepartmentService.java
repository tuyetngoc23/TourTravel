package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.repository.impl.DepartmentDAO;
import com.hakunamatata.springmvc.service.ServiceInterface;

@Service("departmentService")
public class DepartmentService implements ServiceInterface<Department> {
	@Autowired
	private DepartmentDAO	departmentDAO;
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
		return departmentDAO.get(vo);
	}

	@Override
	public List<Department> list(Department vo) {
		return departmentDAO.list(vo);
	}
}