package com.fooday.dao;

import java.util.List;

import com.fooday.model.ProductVo;

public interface ProductDao 
{

	public List searchProduct(ProductVo productvo);

	public void insertProduct(ProductVo productvo);

	public List searchProductById(ProductVo productvo);

	public void updateProduct(ProductVo productvo1);

	public List searchAllProduct(ProductVo productvo);

}
