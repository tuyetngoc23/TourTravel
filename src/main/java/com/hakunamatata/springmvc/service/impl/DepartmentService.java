package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.repository.impl.DepartmentDAO;



@Service("departmentService")
public class DepartmentService {
	@Autowired
	private DepartmentDAO	departmentDAO;
	public List<Department> listDepartment(Department vo) {
		return departmentDAO.list(vo);
	}
}
