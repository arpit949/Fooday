package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.CategoryVo;

@Repository
public class CategoryImp implements CategoryDao
{
	@Autowired
	private SessionFactory sessionfactory;
	
	
	public void insertCategory(CategoryVo categoryvo) 
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(categoryvo);
	}
	
	public List searchCategory(CategoryVo categoryvo)
	{
		List categoryList = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CategoryVo where status="+true);
		categoryList = q.list();
		return categoryList;
	}
	
	public List deleteCategory(CategoryVo categoryvo)
	{
		List categoryListDeleted = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CategoryVo where id="+categoryvo.getId());
		categoryListDeleted = q.list();
		return categoryListDeleted;
	}
	
	public void updateCategory(CategoryVo categoryvo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		session.update(categoryvo);
	}
	
	public List searchById(CategoryVo categoryvo)
	{
		List categoryListId = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from CategoryVo where category_Id="+categoryvo.getId());
		categoryListId = q.list();
		return categoryListId;
	}
}
