package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Payment;
import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.repository.PaymentDAO;

/**
 * @author BaoBB
 *
 */
@Repository("PaymentDAO")
public class PaymentDAOImpl implements PaymentDAO<Payment>{
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void insert(Payment vo) {
		// TODO Auto-generated method stub
		session.insert("Payment.insert",vo);
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
		return session.selectList("Payment.selectList",null);
	}

	@Override
	public Ticket get(Ticket vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Payment.selectOne",vo);
	}
	
}
