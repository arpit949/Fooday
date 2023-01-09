package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.LoginVo;
import com.fooday.model.OrderVo;

@Repository
public class OrderImp implements OrderDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public List searchRestaurantOrderDetails(OrderVo oderVo) {
		
		List orderList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from OrderVo where restaurantvo_restaurant_Id ="+oderVo.getRestaurantvo().getId());
		orderList = q.list();
		return orderList;
	}

	@Override
	public List searchUserOrderDetails(OrderVo oderVo) {
		List orderList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from OrderVo where loginvo_loginId ="+oderVo.getLoginvo().getLoginId());
		orderList = q.list();
		return orderList;
	}

	@Override
	public void insertOrder(OrderVo orderVo) {
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(orderVo);
	}

	@Override
	public void deactivateOrder(OrderVo orderVo) {
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(orderVo);
	}

	@Override
	public List getOrder(OrderVo orderVo) {
		List orderList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from OrderVo where orderBooking_Id ="+orderVo.getId());
		orderList = q.list();
		return orderList;
	}
	
	/*@Override
	public List getStatus(LoginVo loginvo)
	{
		System.out.println("Hello:::::"+loginvo.getUsername());
		List LoginList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from LoginVo where status="+true+" and username='"+loginvo.getUsername()+"'");
		LoginList = q.list();
		return LoginList;
	}*/
}
