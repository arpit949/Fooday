package com.fooday.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name= "city_table")
public class CityVo 
{
	@Id
	@Column(name="city_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "city_Name")
	private String cityName;
	
	@Column(name = "city_Description")
	private String cityDescription;
	
	@ManyToOne
	StateVo statevo;
	
	@Column(name = "status")
	private boolean status = true ;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCityDescription() {
		return cityDescription;
	}

	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
	}

	public StateVo getStatevo() {
		return statevo;
	}

	public void setStatevo(StateVo statevo) {
		this.statevo = statevo;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
