package com.fooday.dao;

import java.util.List;

import com.fooday.model.RestaurantVo;

public interface RestaurantDao 
{
	public void Insert(RestaurantVo restaurantvo);

	public List Search(RestaurantVo restaurantvo);

	public void Update(RestaurantVo restaurantvo);

	public List Delete(RestaurantVo restaurantvo);

	public List SearchById(RestaurantVo restaurantvo);

	public List SearchRestaurantById(RestaurantVo restaurantvo);
	
}
