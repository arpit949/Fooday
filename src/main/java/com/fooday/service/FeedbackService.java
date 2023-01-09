package com.fooday.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fooday.dao.FeedbackDao;
import com.fooday.model.FeedbackVo;

@Service
@Transactional
public class FeedbackService {
	@Autowired
	FeedbackDao feedbackdao;

	public void insertfeedback(FeedbackVo feedbackvo) {
		feedbackdao.insertFeedback(feedbackvo);
	}

	public List searchUser(String userName) {
		List user = feedbackdao.serachUser(userName);
		return user;
	}

	public List searchFeedbackRestaurantAdmin(FeedbackVo feedbackvo) {
		List staff = feedbackdao.searchFeedbackRestaurantAdmin(feedbackvo);
		return staff;
	}

	public List search(FeedbackVo feedbackvo) {
		List feedbackList = feedbackdao.searchFeedback(feedbackvo);
		return feedbackList;
	}

	public List searchFeedbackUser(FeedbackVo feedbackvo) {
		List user = feedbackdao.searchFeedbackUser(feedbackvo);
		return user;
	}

}
