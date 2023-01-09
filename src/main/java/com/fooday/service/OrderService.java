package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.OrderDao;
import com.fooday.model.OrderVo;

@Service
public class OrderService {

	@Autowired
	OrderDao orderDao;
	
	@Transactional
	public List getRestaurantOrderDetails(OrderVo oderVo) {
		List ls = orderDao.searchRestaurantOrderDetails(oderVo);
		return ls;
	}

	@Transactional
	public List getUserOrderDetails(OrderVo oderVo) {
		List ls = orderDao.searchUserOrderDetails(oderVo);
		return ls;
	}

	@Transactional
	public void insertOrder(OrderVo orderVo) {
		orderDao.insertOrder(orderVo);		
	}

	@Transactional
	public void deactivateOrder(OrderVo orderVo) {
		orderDao.deactivateOrder(orderVo);
		
	}

	@Transactional
	public List getOrder(OrderVo orderVo) {
		List ls = orderDao.getOrder(orderVo);
		return ls;
	}

	
}
