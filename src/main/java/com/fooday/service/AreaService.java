package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.AreaDao;
import com.fooday.model.AreaVo;

@Service
public class AreaService 
{
	@Autowired
	AreaDao areadao;
	
	@Transactional
	public void insertArea(AreaVo areavo)
	{
		areadao.insertArea(areavo);
	}

	@Transactional
	public List searchArea(AreaVo areavo) 
	{
		List ls = areadao.searchArea(areavo);
		return ls;
	}

	@Transactional
	public void updateArea(AreaVo areavo) 
	{
		areadao.updateArea(areavo);
	}

	@Transactional
	public List deleteArea(AreaVo areavo) 
	{
		List ls =areadao.deleteArea(areavo);
		return ls;
	}
	
	@Transactional
	public List jsonArea(AreaVo areavo)
	{
		List ls = areadao.jsonArea(areavo);
		return ls;
	}
	
	@Transactional
	public List jsonAreaData(AreaVo areavo) 
	{
		List areaList = areadao.jsonAreaByCityId(areavo);
		return areaList;
	}
	
}
