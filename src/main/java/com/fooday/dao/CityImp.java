package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.CityVo;

@Repository
public class CityImp implements CityDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	
	public void insertCity(CityVo cityvo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(cityvo);
	}
	
	public List searchCity(CityVo cityvo)
	{
		List cityList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CityVo where status="+true);
		cityList = q.list();
		return cityList;
	}
	
	public List deleteCity(CityVo cityvo)
	{
		List deleteList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CityVo where id="+cityvo.getId());
		deleteList = q.list();
		return deleteList;
	}
	
	public void updateCity(CityVo cityvo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(cityvo);
	}
	
	public List jsonCity(CityVo cityvo)
	{
		List jsonList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CityVo where statevo_state_Id="+cityvo.getStatevo().getId());
		jsonList = q.list();
		return jsonList;
	}
	
	public List searchCityId(CityVo cityvo)
	{
		List cityListId = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CityVo where city_Id="+cityvo.getId());
		cityListId = q.list();
		return cityListId;
	}
}
