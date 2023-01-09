package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.LoginVo;

@Repository
public class LoginImp implements LoginDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public void insertRestaurant(LoginVo loginvo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(loginvo);	
	}

	@Override
	public List getStatus(LoginVo loginvo)
	{
		System.out.println("Hello:::::"+loginvo.getUsername());
		List LoginList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from LoginVo where status="+true+" and username='"+loginvo.getUsername()+"'");
		LoginList = q.list();
		return LoginList;
	}

	@Override
	public void activateEmail(LoginVo loginvo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(loginvo);	
	}

	@Override
	public List getData(LoginVo loginvo) 
	{
		List userData = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from LoginVo where loginId="+loginvo.getLoginId());
		userData = q.list();
		return userData;
	}

	@Override
	public void deactivateEmail(LoginVo loginvo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(loginvo);
	}

	@Override
	public void updateRestaurant(LoginVo loginvo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(loginvo);
	}

	@Override
	public void insertUser(LoginVo loginvo) {
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(loginvo);
	}
}
