package com.fooday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fooday.dao.CategoryDao;
import com.fooday.model.CategoryVo;

@Service
public class CategoryService 
{
	@Autowired
	CategoryDao categorydao;
	
	@Transactional
	public void insertCategory(CategoryVo categoryvo)
	{
		categorydao.insertCategory(categoryvo);
	}

	@Transactional
	public List searchCategory(CategoryVo categoryvo) 
	{
		List categoryList = categorydao.searchCategory(categoryvo);
		return categoryList;
	}

	@Transactional
	public void updateCategory(CategoryVo categoryvo) 
	{
		categorydao.updateCategory(categoryvo);
	}

	@Transactional
	public List deleteCategory(CategoryVo categoryvo) 
	{
		List categoryList =categorydao.deleteCategory(categoryvo);
		return categoryList;
	}

	@Transactional
	public List searchCategoryId(CategoryVo categoryvo)
	{
		List categoryListId = categorydao.searchById(categoryvo);
		return categoryListId;
	}

}
