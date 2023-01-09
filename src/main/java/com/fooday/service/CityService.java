package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.CityDao;
import com.fooday.model.CityVo;

@Service
public class CityService {
	@Autowired
	CityDao citydao;

	@Transactional
	public void insertCity(CityVo cityvo) {
		citydao.insertCity(cityvo);
	}

	@Transactional
	public List searchCity(CityVo cityvo) {
		List cityList = citydao.searchCity(cityvo);
		return cityList;
	}

	@Transactional
	public void updateCity(CityVo cityvo) {
		citydao.updateCity(cityvo);
	}

	@Transactional
	public List deleteCity(CityVo cityvo) {
		List cityList = citydao.deleteCity(cityvo);
		return cityList;
	}

	@Transactional
	public List jsonCity(CityVo cityvo) {
		List jsonList = citydao.jsonCity(cityvo);
		return jsonList;
	}
	
	@Transactional
	public List searchCityId(CityVo cityvo) {
		List cityList = citydao.searchCityId(cityvo);
		return cityList;
	}

}
