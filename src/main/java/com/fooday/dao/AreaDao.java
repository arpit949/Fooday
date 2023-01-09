package com.fooday.dao;

import java.util.List;

import com.fooday.model.AreaVo;

public interface AreaDao 
{
	public void insertArea(AreaVo areavo);

	public List searchArea(AreaVo areavo);
	
	public void updateArea(AreaVo areavo);

	public List deleteArea(AreaVo areavo);

	public List jsonArea(AreaVo areavo);

	public List jsonAreaByCityId(AreaVo areavo);
	
}
