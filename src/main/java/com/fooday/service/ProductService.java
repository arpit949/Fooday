package com.fooday.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fooday.dao.ProductDao;
import com.fooday.model.ProductVo;

@Service
public class ProductService 
{
	@Autowired
	ProductDao productdao;
	
	@Transactional
	public List searchProduct(ProductVo productvo)
	{
		List productList = productdao.searchProduct(productvo);
		return productList;
	}

	@Transactional
	public void insertProduct(ProductVo productvo)
	{
		productdao.insertProduct(productvo);
	}

	@Transactional
	public List searchProductById(ProductVo productvo) 
	{
		List productList = productdao.searchProductById(productvo);
		return productList;
	}
	
	@Transactional
	public void updateProduct(ProductVo productvo1)
	{
		productdao.updateProduct(productvo1);
	}

	@Transactional
	public List searchAllProduct(ProductVo productvo) {
		List productList = productdao.searchAllProduct(productvo);
		return productList;
	}

}
