package com.fooday.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "state_table")
public class StateVo
{
	@Id
	@Column(name="state_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	

	@Column(name = "state_Name")
	private String stateName;
	
	@Column(name = "state_Description")
	private String stateDescription;
	
	@Column(name = "status")
	private boolean status = true ;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getStateDescription() {
		return stateDescription;
	}

	public void setStateDescription(String stateDescription) {
		this.stateDescription = stateDescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
