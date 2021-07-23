package com.hakunamatata.springmvc.service;

import com.hakunamatata.springmvc.entity.Ticket;

/**
 * @author BaoBB
 *
 * @param <T>
 */
public interface PaymentService<T> extends ServiceInterface<T>{
	Ticket get(Ticket vo);
}
