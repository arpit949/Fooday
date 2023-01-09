package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.RestaurantVo;

@Repository
public class RestaurantImp implements RestaurantDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	
	public void Insert(RestaurantVo restaurantvo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.save(restaurantvo);
	}
	
	public List Search(RestaurantVo restaurantvo)
	{
		List ls = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from RestaurantVo");
		ls = q.list();
		return ls;
	}
	
	public List Delete(RestaurantVo restaurantvo)
	{
		List ls = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from RestaurantVo where id="+restaurantvo.getId());
		ls = q.list();
		return ls;
	}
	
	public void Update(RestaurantVo restaurantvo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(restaurantvo);
	}
	
	public List SearchById(RestaurantVo restaurantvo)
	{
		List ls = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from RestaurantVo where id="+restaurantvo.getId());
		ls = q.list();
		return ls;
	
	}

	@Override
	public List SearchRestaurantById(RestaurantVo restaurantvo)
	{
		List ls = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from RestaurantVo where loginvo_loginId="+restaurantvo.getLoginvo().getLoginId());
		ls = q.list();
		return ls;
	}
}
