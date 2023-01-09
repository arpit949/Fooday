package com.fooday.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "area_table")
public class AreaVo 
{
	@Id
	@Column(name = "area_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "area_Name")
	private String areaName;
	
	@Column(name = "area_Description")
	private String areaDescription;
	
	@ManyToOne
	StateVo statevo;
	
	@ManyToOne
	CityVo cityvo;
	
	@Column(name = "area_Pincode")
	private int areaPincode;
	
	@Column(name = "status")
	private boolean status = true;

	public int getAreaPincode() {
		return areaPincode;
	}

	public void setAreaPincode(int areaPincode) {
		this.areaPincode = areaPincode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getAreaDescription() {
		return areaDescription;
	}

	public void setAreaDescription(String areaDescription) {
		this.areaDescription = areaDescription;
	}

	public StateVo getStatevo() {
		return statevo;
	}

	public void setStatevo(StateVo statevo) {
		this.statevo = statevo;
	}

	public CityVo getCityvo() {
		return cityvo;
	}

	public void setCityvo(CityVo cityvo) {
		this.cityvo = cityvo;
	}


	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
