package com.hakunamatata.springmvc.repository;

import java.util.List;

public interface DAO<T> {
	void insert(T vo);

	void update(T vo);

	void delete(T vo);

	T get(T vo);

	List<T> list(T vo);
}
