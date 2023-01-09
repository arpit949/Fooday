package com.fooday.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.AreaVo;
import com.fooday.model.CityVo;
import com.fooday.model.LoginVo;
import com.fooday.model.RestaurantVo;
import com.fooday.model.StateVo;
import com.fooday.service.AreaService;
import com.fooday.service.CityService;
import com.fooday.service.LoginService;
import com.fooday.service.RestaurantService;
import com.fooday.service.StateService;
import com.fooday.utils.baseMethods;

@Controller
public class RestaurantContoller {

	@Autowired
	StateService stateservice;

	@Autowired
	CityService cityservice;

	@Autowired
	AreaService areaservice;

	@Autowired
	RestaurantService restaurantservice;
	
	@Autowired
	LoginService loginservice;

	@RequestMapping(value = "admin/viewRestaurant.html", method = RequestMethod.GET)
	public ModelAndView categoryView(@ModelAttribute RestaurantVo restaurantvo)
	{
		List restaurantList = restaurantservice.SearchRestaurant(restaurantvo);
		return new ModelAndView("admin/viewRestaurant", "data", restaurantList).addObject("restaurantvo",new RestaurantVo());
	}

	@RequestMapping(value = "admin/activateEmail.html",method = RequestMethod.GET)
	public ModelAndView activateEmail(@ModelAttribute LoginVo loginvo , HttpServletRequest request)
	{
		int loginId = Integer.parseInt(request.getParameter("loginId"));
		loginvo.setLoginId(loginId);
		List userData = loginservice.getData(loginvo);
		LoginVo loginVo2 = (LoginVo)userData.get(0);
		
		String receiver = loginVo2.getUsername();
		String data = loginVo2.getPassword();
		
		System.out.println(receiver+data);
		
		loginvo.setLoginId(loginVo2.getLoginId());
		loginvo.setEnabled("1");
		loginvo.setUsername(receiver);
		loginvo.setPassword(data);
		loginvo.setRole(loginVo2.getRole());
		loginvo.setStatus(true);
		
		baseMethods.sendMail(receiver, data);
		System.out.println("After mail send.");
		loginservice.activateEmail(loginvo);
		
		return new ModelAndView("redirect:/admin/viewRestaurant.html");
	}
	
	@RequestMapping(value = "admin/deactivateEmail.html",method = RequestMethod.GET)
	public ModelAndView deactivateEmail(@ModelAttribute LoginVo loginvo , HttpServletRequest request)
	{
		int loginId = Integer.parseInt(request.getParameter("loginId"));
		loginvo.setLoginId(loginId);
		List userData = loginservice.getData(loginvo);
		LoginVo loginVo2 = (LoginVo)userData.get(0);
		
		String receiver = loginVo2.getUsername();
		String data = loginVo2.getPassword();
		
		System.out.println(receiver+data);
		
		loginvo.setLoginId(loginVo2.getLoginId());
		loginvo.setEnabled("1");
		loginvo.setUsername(receiver);
		loginvo.setPassword(data);
		loginvo.setRole(loginVo2.getRole());
		loginvo.setStatus(false);
		
		loginservice.deactivateEmail(loginvo);
		
		//baseMethods.sendMail(receiver, data);
		
		return new ModelAndView("redirect:/admin/viewRestaurant.html");
	}
	
	@RequestMapping(value = "user/viewAllRestaurant.html", method = RequestMethod.GET)
	public ModelAndView restaurantView(@ModelAttribute RestaurantVo restaurantvo)
	{
		List restaurantList = restaurantservice.SearchRestaurant(restaurantvo);
		return new ModelAndView("user/viewRestaurant", "restaurantList", restaurantList).addObject("restaurantvo",new RestaurantVo());
	}
}
