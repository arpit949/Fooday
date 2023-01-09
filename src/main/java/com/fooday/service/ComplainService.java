package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.ComplainDao;
import com.fooday.model.ComplainVo;

@Service
public class ComplainService 
{
	@Autowired
	ComplainDao complaindao;
	
	@Transactional
	public void insertComplain(ComplainVo complainvo)
	{
		complaindao.insertComplain(complainvo);
	}

	@Transactional
	public List searchComplainRestaurantAdmin(ComplainVo complainvo) 
	{
		List staff = complaindao.searchComplainRestaurantAdmin(complainvo);
		return staff;
	}

	@Transactional
	public void updateComplain(ComplainVo complainvo) 
	{
		complaindao.updateComplain(complainvo);
	}

	@Transactional
	public List deleteComplain(ComplainVo complainvo) 
	{
		List complainlist =complaindao.deleteComplain(complainvo);
		return complainlist;
	}
	
	@Transactional
	public List searchUser(String userName) 
	{
		List user = complaindao.serachUser(userName);
		return user;
	}

	@Transactional
	public List search(ComplainVo complainvo) 
	{
		List complainlist = complaindao.searchComplain(complainvo);
		return complainlist;
	}
	
	@Transactional
	public List searchId(ComplainVo complainvo) 
	{
		List id = complaindao.searchId(complainvo);
		return id;
	}

	public List searchComplainUser(ComplainVo complainvo) {
		List user = complaindao.searchComplainUser(complainvo);
		return user;
	}
}
