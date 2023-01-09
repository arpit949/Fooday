package com.fooday.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.LoginVo;
import com.fooday.model.RestaurantVo;
import com.fooday.service.LoginService;
import com.fooday.service.RestaurantService;
import com.fooday.utils.baseMethods;

@Controller
public class ProfileController
{
	@Autowired
	RestaurantService restaurantservice;
	
	@Autowired
	LoginService loginservice;
	
	@RequestMapping(value="restaurantAdmin/showProfile.html", method=RequestMethod.GET)
	public ModelAndView showProfile(@ModelAttribute RestaurantVo restaurantvo , LoginVo loginvo)
	{
		String username = baseMethods.getUser();
		loginvo.setUsername(username);
		List userData = loginservice.getStatus(loginvo);
		
		LoginVo loginVo2 = (LoginVo)userData.get(0);
		loginvo.setLoginId(loginVo2.getLoginId());
		
		restaurantvo.setLoginvo(loginvo);
		
		List restaurantList = restaurantservice.SearchRestaurantById(restaurantvo);
		return new ModelAndView("restaurantAdmin/profile", "profileData", restaurantList).addObject("restaurantvo",new RestaurantVo());
	}
	
	@RequestMapping(value="restaurantAdmin/accountSetting" , method = RequestMethod.GET)
	public ModelAndView accountSetting(@ModelAttribute RestaurantVo restaurantvo , LoginVo loginvo ,HttpServletRequest request)
	{
		int loginId = Integer.parseInt(request.getParameter("loginId"));
		loginvo.setLoginId(loginId);
				
		restaurantvo.setLoginvo(loginvo);
		
		List restaurantList = restaurantservice.SearchRestaurantById(restaurantvo);
		return new ModelAndView("restaurantAdmin/profile_accountSetting","restaurantvo",(RestaurantVo)restaurantList.get(0)).addObject("profileData", restaurantList);
	}
	
	@RequestMapping(value="restaurantAdmin/securitySetting" , method = RequestMethod.GET)
	public ModelAndView securitySetting(@ModelAttribute RestaurantVo restaurantvo , LoginVo loginvo , HttpServletRequest request)
	{
		int loginId = Integer.parseInt(request.getParameter("loginId"));
		loginvo.setLoginId(loginId);
				
		restaurantvo.setLoginvo(loginvo);
		
		List restaurantList = restaurantservice.SearchRestaurantById(restaurantvo);
		return new ModelAndView("restaurantAdmin/profile_securitySetting","restaurantvo",(RestaurantVo)restaurantList.get(0)).addObject("profileData", restaurantList);
	}
	
	@RequestMapping(value="restaurantAdmin/passwordChange", method = RequestMethod.POST)
	public ModelAndView passwordChange(@ModelAttribute RestaurantVo restaurantvo , LoginVo loginvo , HttpServletRequest request)
	{
		String currentPassword = request.getParameter("currentPassword");
		String newPassword = request.getParameter("newPassword");
		
		int id = restaurantvo.getId();
		List restaurantList = restaurantservice.SearchCategoryId(restaurantvo);
		
		RestaurantVo restaurantvo2 = (RestaurantVo)restaurantList.get(0);
		
		String password = restaurantvo2.getLoginvo().getPassword();
		
		if(password.endsWith(currentPassword))
		{	
			loginvo.setLoginId(restaurantvo2.getLoginvo().getLoginId());
			loginvo.setUsername(restaurantvo2.getLoginvo().getUsername());
			loginvo.setRole("ROLE_RESTAURANT");
			loginvo.setStatus(true);
			loginvo.setPassword(newPassword);
			
			loginservice.updateRestaurant(loginvo);
			
			return new ModelAndView("redirect:/restaurantAdmin/showProfile.html");
		}
		else
			return null	;
	}
}
