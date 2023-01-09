package com.fooday.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fooday.model.FeedbackVo;

@Repository
public class FeedbackImp implements FeedbackDao {
	@Autowired
	private SessionFactory sessionfactory;

	public void insertFeedback(FeedbackVo feedbackvo) {
		Session session = this.sessionfactory.getCurrentSession();
		session.save(feedbackvo);
	}

	public List serachUser(String userName) {
		List username = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		System.out.println("from LoginVo where username='" + userName + "'");
		Query q = session.createQuery("from LoginVo where username='" + userName + "'");
		username = q.list();
		return username;
	}

	@Override
	public List searchFeedbackRestaurantAdmin(FeedbackVo feedbackvo) {
		List staff = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVo where loginvo_loginId= "+feedbackvo.getLoginvo().getLoginId());
		staff = q.list();
		return staff;
	}

	@Override
	public List searchFeedback(FeedbackVo feedbackvo) {
		List feedback = new ArrayList();
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVo");
		feedback = q.list();
		return feedback;
	}

	@Override
	public List searchFeedbackUser(FeedbackVo feedbackvo) {
		List user = new ArrayList();
		String role = "ROLE_USER";
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVo where loginvo_loginId= "+feedbackvo.getLoginvo().getLoginId());
		user = q.list();
		return user;
	}

}
