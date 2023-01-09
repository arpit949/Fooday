package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.StateDao;
import com.fooday.model.StateVo;

@Service
public class StateService 
{
	@Autowired
	StateDao statedao;
	
	@Transactional
	public void insertState(StateVo statevo)
	{
		statedao.insertState(statevo);
	}

	@Transactional
	public List searchState(StateVo statevo) 
	{
		List ls = statedao.searchState(statevo);
		return ls;
	}

	@Transactional
	public void updateState(StateVo statevo) 
	{
		statedao.updateState(statevo);
	}

	@Transactional
	public List deleteState(StateVo statevo) 
	{
		List ls =statedao.deleteState(statevo);
		return ls;
	}
	
	@Transactional
	public List searchStateId(StateVo statevo) {
		List ls = statedao.searchStateId(statevo);
		return ls;
	}
}
