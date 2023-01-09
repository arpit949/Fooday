package com.fooday.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderBooking_table")
public class OrderVo 
{
	@Id
	@Column(name="orderBooking_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "order_Date")
	private Date orderDate;
	
	@ManyToOne
	ProductVo productvo;

	@ManyToOne
	LoginVo loginvo;
	
	@ManyToOne
	RestaurantVo restaurantvo;
	
	@Column(name = "status")
	private boolean status = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public ProductVo getProductvo() {
		return productvo;
	}

	public void setProductvo(ProductVo productvo) {
		this.productvo = productvo;
	}

	public LoginVo getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVo loginvo) {
		this.loginvo = loginvo;
	}

	public RestaurantVo getRestaurantvo() {
		return restaurantvo;
	}

	public void setRestaurantvo(RestaurantVo restaurantvo) {
		this.restaurantvo = restaurantvo;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
