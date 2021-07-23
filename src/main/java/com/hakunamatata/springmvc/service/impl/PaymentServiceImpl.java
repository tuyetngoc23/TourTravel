package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Payment;
import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.repository.impl.PaymentDAOImpl;
import com.hakunamatata.springmvc.service.PaymentService;

/**
 * @author BaoBB
 *
 */
@Service("PaymentService")
public class PaymentServiceImpl implements PaymentService<Payment>{
	@Autowired
	private PaymentDAOImpl	paymentDAO;
	@Override
	public void insert(Payment vo) {
		// TODO Auto-generated method stub
		paymentDAO.insert(vo);
	}

	@Override
	public void update(Payment vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Payment vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Payment get(Payment vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Payment> list(Payment vo) {
		// TODO Auto-generated method stub
		return paymentDAO.list(vo);
	}

	@Override
	public Ticket get(Ticket vo) {
		// TODO Auto-generated method stub
		return paymentDAO.get(vo);
	}

}
