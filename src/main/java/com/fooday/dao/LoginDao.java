package com.fooday.dao;

import java.util.List;

import com.fooday.model.LoginVo;

public interface LoginDao 
{

	void insertRestaurant(LoginVo loginvo);

	List getStatus(LoginVo loginvo);

	void activateEmail(LoginVo loginvo);

	List getData(LoginVo loginvo);

	void deactivateEmail(LoginVo loginvo);

	void updateRestaurant(LoginVo loginvo);

	void insertUser(LoginVo loginvo);

}
