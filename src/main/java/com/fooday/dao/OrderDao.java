package com.fooday.dao;

import java.util.List;

import com.fooday.model.OrderVo;

public interface OrderDao {

	List searchRestaurantOrderDetails(OrderVo oderVo);

	List searchUserOrderDetails(OrderVo oderVo);

	void insertOrder(OrderVo orderVo);

	void deactivateOrder(OrderVo orderVo);

	List getOrder(OrderVo orderVo);

}
