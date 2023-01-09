package com.fooday.dao;

import java.util.List;

import com.fooday.model.FeedbackVo;;

public interface FeedbackDao 
{
	public void insertFeedback(FeedbackVo feedbackvo);

	public List serachUser(String userName);

	public List searchFeedbackRestaurantAdmin(FeedbackVo feedbackvo);

	public List searchFeedback(FeedbackVo feedbackvo);

	public List searchFeedbackUser(FeedbackVo feedbackvo);
}
