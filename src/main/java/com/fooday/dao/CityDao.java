package com.fooday.dao;

import java.util.List;

import com.fooday.model.CityVo;

public interface CityDao 
{
	public void insertCity(CityVo cityvo);

	public List searchCity(CityVo cityvo);

	public void updateCity(CityVo cityvo);

	public List deleteCity(CityVo cityvo);

	public List jsonCity(CityVo cityvo);

	public List searchCityId(CityVo cityvo);
	
}
