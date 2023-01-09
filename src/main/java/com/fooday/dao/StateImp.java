package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.StateVo;

@Repository
public class StateImp implements StateDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	
	public void insertState(StateVo statevo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(statevo);
	}
	
	public List searchState(StateVo statevo)
	{
		List StateList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from StateVo where status="+true);
		StateList = q.list();
		return StateList;
	}
	
	public List deleteState(StateVo statevo)
	{
		List StateListDelete = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from StateVo where id="+statevo.getId());
		StateListDelete = q.list();
		return StateListDelete;
	}
	
	public void updateState(StateVo statevo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(statevo);
	}
	
	public List searchStateId(StateVo statevo)
	{
		List StateListId = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from StateVo where state_Id="+statevo.getId());
		StateListId = q.list();
		return StateListId;
	}
}
