package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.RestaurantDao;
import com.fooday.model.RestaurantVo;

@Service
public class RestaurantService 
{
	@Autowired
	RestaurantDao restaurantdao;
	
	@Transactional
	public void InsertRestaurant(RestaurantVo restaurantvo)
	{
		restaurantdao.Insert(restaurantvo);
	}

	@Transactional
	public List SearchRestaurant(RestaurantVo restaurantvo) 
	{
		List ls = restaurantdao.Search(restaurantvo);
		return ls;
	}

	@Transactional
	public void UpdateRestaurant(RestaurantVo restaurantvo) 
	{
		restaurantdao.Update(restaurantvo);
	}

	@Transactional
	public List DeleteRestaurant(RestaurantVo restaurantvo) 
	{
		List ls =restaurantdao.Delete(restaurantvo);
		return ls;
	}

	@Transactional
	public List SearchCategoryId(RestaurantVo restaurantvo)
	{
		List ls = restaurantdao.SearchById(restaurantvo);
		return ls;
	}

	@Transactional
	public List SearchRestaurantById(RestaurantVo restaurantvo) 
	{
		List ls = restaurantdao.SearchRestaurantById(restaurantvo);
		return ls;
	}
}
