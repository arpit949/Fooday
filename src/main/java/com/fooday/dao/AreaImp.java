package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.AreaVo;

@Repository
public class AreaImp implements AreaDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	public void insertArea(AreaVo areavo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(areavo);
	}
	
	public List searchArea(AreaVo areavo)
	{
		List AreaList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from AreaVo where status="+true);
		AreaList = q.list();
		return AreaList;
	}
	

	public List deleteArea(AreaVo areavo)
	{
		List AreaListDelete = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from AreaVo where id="+areavo.getId());
		AreaListDelete = q.list();
		return AreaListDelete;
	}
	
	public void updateArea(AreaVo areavo)
	{
		System.out.println("update method:::");
		Session session = this.sessionfactory.getCurrentSession();
		session.update(areavo);
	}
	
	public List jsonPincode(AreaVo areavo)
	{
		List jsonList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from AreaVo where cityvo_city_Id="+areavo.getCityvo().getId());
		jsonList = q.list();
		return jsonList;
	}
	
	public List jsonArea(AreaVo areavo)
	{
		List jsonList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from AreaVo where id="+areavo.getId());
		jsonList = q.list();
		return jsonList;
	}
	public List jsonAreaByCityId(AreaVo areavo)
	{
		List jsonList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from AreaVo where status ="+true+" and cityvo_city_Id="+areavo.getCityvo().getId());
		jsonList = q.list();
		return jsonList;
	}
}
