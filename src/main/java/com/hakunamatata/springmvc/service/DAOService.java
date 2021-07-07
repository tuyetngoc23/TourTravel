package com.hakunamatata.springmvc.service;

import java.util.List;
/**
 * @author Hai Van
 *
 */
public interface DAOService <T>{
	void insert(T vo);

	void update(T vo);

	void delete(T vo);

	T get(T vo);

	List<T> list(T vo);
}
