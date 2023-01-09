package com.fooday.dao;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.ProductVo;

@Repository
public class ProductImp implements ProductDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List searchProduct(ProductVo productvo)
	{
		List productList = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ProductVo where status="+true+" and loginvo_loginId ="+productvo.getLoginvo().getLoginId());
		productList = query.list();
		return productList;
	}
	
	public void insertProduct(ProductVo productvo)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(productvo);
	}

	@Override
	public List searchProductById(ProductVo productvo)
	{
		List productList = new ArrayList();
		Session session =  this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ProductVo where id="+productvo.getId()+" and status="+true);
		productList = query.list();
		return productList;
	}

	@Override
	public void updateProduct(ProductVo productvo1) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.update(productvo1);
	}

	@Override
	public List searchAllProduct(ProductVo productvo) {
		List productList = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ProductVo where status="+true);
		productList = query.list();
		return productList;
	}
}
