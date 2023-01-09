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

import com.fooday.model.ComplainVo;
import com.fooday.model.LoginVo;
import com.fooday.service.ComplainService;
import com.fooday.utils.baseMethods;

@Controller
public class ComplainContoller {
	@Autowired
	ComplainService complainservice;

	@RequestMapping(value = "restaurantAdmin/viewComplain.html", method = RequestMethod.GET)
	public ModelAndView complain(@ModelAttribute ComplainVo complainvo) {
		String userName = baseMethods.getUser();
		List loginId = complainservice.searchUser(userName);
		LoginVo loginvo1 = (LoginVo) loginId.get(0);
		complainvo.setLoginvo(loginvo1);
		List complainList = complainservice.searchComplainRestaurantAdmin(complainvo);
		System.out.println("Complainlist>>>>>>>" + complainList);

		return new ModelAndView("restaurantAdmin/viewComplain", "complainvo", new ComplainVo())
				.addObject("complainList", complainList);
	}

	@RequestMapping(value = "restaurantAdmin/addComplainData.html", method = RequestMethod.POST)
	public ModelAndView complainAdd(@ModelAttribute ComplainVo complainvo, HttpServletRequest request) {
		Date date = new Date();
		String userName = baseMethods.getUser();
		List loginId = complainservice.searchUser(userName);

		LoginVo loginvo1 = (LoginVo) loginId.get(0);
		System.out.println("login id:::::::::" + loginvo1.getLoginId());

		complainvo.setComplainDate(date);
		complainvo.setComplainStatus("pending");
		complainvo.setLoginvo(loginvo1);
		System.out.println("Complainvo>>>>>>>>>" + complainvo.getComplainSubject() + complainvo.getComplainStatus());
		complainservice.insertComplain(complainvo);

		return new ModelAndView("redirect:/restaurantAdmin/viewComplain.html");
	}

	@RequestMapping(value = "admin/viewComplain.html", method = RequestMethod.GET)
	public ModelAndView complainViewAdmin(@ModelAttribute ComplainVo complainvo) {
		List complainList = complainservice.search(complainvo);
		return new ModelAndView("admin/viewComplain", "complainlist", complainList).addObject("complainvo",
				new ComplainVo());
	}

	@RequestMapping(value = "admin/complainDataGet.html", method = RequestMethod.GET)
	public ModelAndView complainAdmin(@ModelAttribute ComplainVo complainvo, HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.print("id::::" + id);
		complainvo.setId(id);
		List complainList = complainservice.searchId(complainvo);
		System.out.print("list:::" + complainList);
		return new ModelAndView("admin/jsonComplain", "complainlist", complainList);
	}

	@RequestMapping(value = "admin/replyComplainData.html", method = RequestMethod.POST)
	public ModelAndView complainreplyAdmin(@ModelAttribute ComplainVo complainvo, HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		complainvo.setId(id);
		List complainList = complainservice.searchId(complainvo);

		ComplainVo complain1 = (ComplainVo) complainList.get(0);
		Date date = new Date();
				
		String reply = request.getParameter("reply");
		
		complain1.setReplyDate(date);
		complain1.setReply(reply);
		complain1.setComplainStatus("resloved");
		
		complainservice.insertComplain(complain1);
		return new ModelAndView("redirect:/admin/viewComplain.html");
	}
	
	@RequestMapping(value = "user/viewComplain.html", method = RequestMethod.GET)
	public ModelAndView userComplain(@ModelAttribute ComplainVo complainvo) {
		String userName = baseMethods.getUser();
		List loginId = complainservice.searchUser(userName);
		LoginVo loginvo1 = (LoginVo) loginId.get(0);
		complainvo.setLoginvo(loginvo1);
		List complainList = complainservice.searchComplainUser(complainvo);
		System.out.println("Complainlist>>>>>>>" + complainList);

		return new ModelAndView("user/complain", "complainvo", new ComplainVo())
				.addObject("complainList", complainList);
	}
	
	@RequestMapping(value = "user/addComplain.html", method = RequestMethod.POST)
	public ModelAndView userComplainAdd(@ModelAttribute ComplainVo complainvo, HttpServletRequest request) {
		Date date = new Date();
		String userName = baseMethods.getUser();
		List loginId = complainservice.searchUser(userName);

		LoginVo loginvo1 = (LoginVo) loginId.get(0);
		System.out.println("login id:::::::::" + loginvo1.getLoginId());

		complainvo.setComplainDate(date);
		complainvo.setComplainStatus("pending");
		complainvo.setLoginvo(loginvo1);
		System.out.println("Complainvo>>>>>>>>>" + complainvo.getComplainSubject() + complainvo.getComplainStatus());
		complainservice.insertComplain(complainvo);

		return new ModelAndView("redirect:/user/viewComplain.html");
	}
}
