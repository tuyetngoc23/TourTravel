package com.hakunamatata.springmvc.repository;

import com.hakunamatata.springmvc.entity.Ticket;

/**
 * @author BaoBB
 *
 * @param <T>
 */
public interface PaymentDAO<T> extends DAO<T>{
	Ticket get(Ticket vo);
}
