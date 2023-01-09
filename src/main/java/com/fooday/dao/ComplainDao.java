package com.fooday.dao;

import java.util.List;

import com.fooday.model.ComplainVo;

public interface ComplainDao 
{
	public void insertComplain(ComplainVo complainvo);

	public List searchComplain(ComplainVo complainvo);

	public void updateComplain(ComplainVo complainvo);

	public List deleteComplain(ComplainVo complainvo);

	public List serachUser(String userName);

	public List searchComplainRestaurantAdmin(ComplainVo complainvo);

	public List searchId(ComplainVo complainvo);

	public List searchComplainUser(ComplainVo complainvo);
	
}
