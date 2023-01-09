package com.fooday.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.FeedbackVo;
import com.fooday.model.LoginVo;
import com.fooday.service.FeedbackService;
import com.fooday.utils.baseMethods;

@Controller
public class FeedbackContoller 
{
	@Autowired
	FeedbackService feedbackservice;
	
	@RequestMapping(value = "restaurantAdmin/viewfeedback.html" ,method = RequestMethod.GET )
	public ModelAndView feedback(@ModelAttribute FeedbackVo feedbackvo)
	{
		String userName = baseMethods.getUser();
		List loginId = feedbackservice.searchUser(userName);
		LoginVo loginvo1 = (LoginVo)loginId.get(0);
		feedbackvo.setLoginvo(loginvo1);
		List feedbackList = feedbackservice.searchFeedbackRestaurantAdmin(feedbackvo);
		System.out.println("feedbackList>>>>>>>"+feedbackList);
		return new ModelAndView ("restaurantAdmin/viewFeedback","feedbackvo",new FeedbackVo()).addObject("feedbackList",feedbackList);
	}

	@RequestMapping(value = "restaurantAdmin/addFeedback.html" ,method = RequestMethod.POST )
	public ModelAndView feedbackAdd(@ModelAttribute FeedbackVo feedbackvo,HttpServletRequest request)
	{
		String userName = baseMethods.getUser();
		List loginId = feedbackservice.searchUser(userName);

		LoginVo loginvo1 = (LoginVo)loginId.get(0);
		System.out.println("login id:::::::::"+loginvo1.getLoginId());
	
		feedbackvo.setLoginvo(loginvo1);
		System.out.println("feedbackvo>>>>>>>>>");
		feedbackservice.insertfeedback(feedbackvo);
		
		return new ModelAndView ("redirect:/restaurantAdmin/viewfeedback.html");
	}
		
	@RequestMapping(value = "admin/viewFeedback.html" ,method = RequestMethod.GET )
	public ModelAndView feedbackViewAdmin(@ModelAttribute FeedbackVo feedbackvo)
	{
		List feedbackList = feedbackservice.search(feedbackvo); 
		return new ModelAndView ("admin/viewFeedback","feedbackList",feedbackList);
	}
	
	@RequestMapping(value = "user/viewfeedback.html" ,method = RequestMethod.GET )
	public ModelAndView userFeedback(@ModelAttribute FeedbackVo feedbackvo)
	{
		String userName = baseMethods.getUser();
		List loginId = feedbackservice.searchUser(userName);
		LoginVo loginvo1 = (LoginVo)loginId.get(0);
		feedbackvo.setLoginvo(loginvo1);
		List feedbackList = feedbackservice.searchFeedbackUser(feedbackvo);
		System.out.println("feedbackList>>>>>>>"+feedbackList);
		return new ModelAndView ("user/feedback","feedbackvo",new FeedbackVo()).addObject("feedbackList",feedbackList);
	}
	
	@RequestMapping(value = "user/addFeedback.html" ,method = RequestMethod.POST )
	public ModelAndView userFeedbackAdd(@ModelAttribute FeedbackVo feedbackvo,HttpServletRequest request)
	{
		String userName = baseMethods.getUser();
		List loginId = feedbackservice.searchUser(userName);

		LoginVo loginvo1 = (LoginVo)loginId.get(0);
		System.out.println("login id:::::::::"+loginvo1.getLoginId());
	
		feedbackvo.setLoginvo(loginvo1);
		System.out.println("feedbackvo>>>>>>>>>");
		feedbackservice.insertfeedback(feedbackvo);
		
		return new ModelAndView ("redirect:/user/viewfeedback.html");
	}
	/*
	 * viewComplain.html
	@RequestMapping(value = "admin/complainDataGet.html" ,method = RequestMethod.GET )
	public ModelAndView complainAdmin(@ModelAttribute ComplainVo complainvo , HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.print("id::::"+id);
		complainvo.setId(id);
		List complainList = complainservice.searchId(complainvo);
		System.out.print("list:::"+complainList);
		return new ModelAndView ("admin/jsonComplain","complainlist",complainList);
	}

	@RequestMapping(value = "admin/replyComplainData.html" ,method = RequestMethod.POST )
	public ModelAndView complainreplyAdmin(@ModelAttribute ComplainVo complainvo)
	{
		Date date = new Date();
		complainvo.setReplyDate(date);
		complainvo.setComplainStatus("resloved");
		complainservice.updateComplain(complainvo);
		return new ModelAndView ("redirect:/admin/viewComplain.html");
	}*/
}
