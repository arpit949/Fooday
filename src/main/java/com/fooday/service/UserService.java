package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.RestaurantDao;
import com.fooday.dao.UserDao;
import com.fooday.model.RestaurantVo;
import com.fooday.model.UserRegisterVo;

@Service
public class UserService 
{
	@Autowired
	UserDao userdao;
	
	@Transactional
	public void InsertUsre(UserRegisterVo uservo)
	{
		userdao.Insert(uservo);
	}
}
