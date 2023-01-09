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
@Table(name = "feedback_table")
public class FeedbackVo {
	@Id
	@Column(name = "feedback_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "rating")
	private int rating;

	@Column(name = "feedback")
	private String feedback;

	@ManyToOne
	LoginVo loginvo;

	public int getId() {
		return id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public LoginVo getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVo loginvo) {
		this.loginvo = loginvo;
	}

	public void setId(int id) {
		this.id = id;
	}

}
