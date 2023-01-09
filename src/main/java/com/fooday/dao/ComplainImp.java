package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.ComplainVo;
import com.fooday.model.LoginVo;

@Repository
public class ComplainImp implements ComplainDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	
	public void insertComplain(ComplainVo complainvo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(complainvo);
	}
	
	public List searchComplain(ComplainVo complainvo)
	{
		List complainlist = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVo where status="+true);
		complainlist = q.list();
		return complainlist;
	}
	
	public List deleteComplain(ComplainVo complainvo)
	{
		List complainlist = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVo where id="+complainvo.getId());
		complainlist = q.list();
		return complainlist;
	}
	
	public void updateComplain(ComplainVo complainvo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(complainvo);
	}
	@Override
	public List serachUser(String userName)
	{
		List username = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		System.out.println("from LoginVo where username='"+userName+"'");
		Query q = session.createQuery("from LoginVo where username='"+userName+"'");
		username = q.list();
		return username;
	}
	@Override
	public List searchComplainRestaurantAdmin(ComplainVo complainvo)
	{
		String complain = "pending";
		List staff = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVo where loginvo_loginId= "+complainvo.getLoginvo().getLoginId());
		staff = q.list();
		return staff;
	}
	
	@Override
	public List searchId(ComplainVo complainvo)
	{
		List id = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVo where complain_Id="+complainvo.getId());
		id = q.list();
		return id;
	}

	@Override
	public List searchComplainUser(ComplainVo complainvo) {
		String complain = "pending";
		List user = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVo where loginvo_loginId= "+complainvo.getLoginvo().getLoginId());
		user = q.list();
		return user;
	}

}
