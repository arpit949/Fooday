package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.LoginDao;
import com.fooday.model.LoginVo;

@Service
public class LoginService 
{
	@Autowired
	LoginDao logindao;
	
	@Transactional
	public void insertRestaurant(LoginVo loginvo)
	{
		logindao.insertRestaurant(loginvo);
	}

	@Transactional
	public List getStatus(LoginVo loginvo)
	{
		List status = logindao.getStatus(loginvo);
		return status;
	}

	@Transactional
	public void activateEmail(LoginVo loginvo)
	{
		logindao.activateEmail(loginvo);
	}

	@Transactional
	public List getData(LoginVo loginvo) 
	{
		List userData = logindao.getData(loginvo);
		return userData;		
	}

	@Transactional
	public void deactivateEmail(LoginVo loginvo)
	{
		logindao.deactivateEmail(loginvo);	
	}
	
	@Transactional
	public void updateRestaurant(LoginVo loginvo) 
	{
		logindao.updateRestaurant(loginvo);
	}

	@Transactional
	public void insertUser(LoginVo loginvo) {
		logindao.insertUser(loginvo);
	}
}
