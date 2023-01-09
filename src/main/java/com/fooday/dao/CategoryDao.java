package com.fooday.dao;

import java.util.List;

import com.fooday.model.CategoryVo;

public interface CategoryDao {

	void insertCategory(CategoryVo categoryvo);

	List searchCategory(CategoryVo categoryvo);

	void updateCategory(CategoryVo categoryvo);

	List deleteCategory(CategoryVo categoryvo);

	List searchById(CategoryVo categoryvo);

}
