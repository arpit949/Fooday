package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.RestaurantVo;
import com.fooday.model.UserRegisterVo;

@Repository
public class UserImp implements UserDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	
	public void Insert(UserRegisterVo uservo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.save(uservo);
	}
}
