package com.fooday.dao;

import java.util.List;

import com.fooday.model.StateVo;

public interface StateDao 
{
	public void insertState(StateVo statevo);

	public List searchState(StateVo statevo);

	public void updateState(StateVo statevo);

	public List deleteState(StateVo statevo);

	public List searchStateId(StateVo statevo);
	
}
