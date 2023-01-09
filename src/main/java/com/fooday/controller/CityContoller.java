package com.fooday.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.CityVo;
import com.fooday.model.StateVo;
import com.fooday.service.CityService;
import com.fooday.service.StateService;

@Controller
public class CityContoller 
{
	@Autowired
	StateService stateservice;
	
	@Autowired
	CityService cityservice;
	
	@RequestMapping(value = "admin/viewCity.html" ,method = RequestMethod.GET )
	public ModelAndView city(@ModelAttribute StateVo statevo,CityVo cityvo)
	{
		List statelist=stateservice.searchState(statevo);
		List cityList = cityservice.searchCity(cityvo); 
		return new ModelAndView ("admin/viewCity","statelist",statelist).addObject("citylist", cityList).addObject("cityvo", new CityVo());
	}
	
	@RequestMapping(value = "admin/addCityData.html" ,method = RequestMethod.POST )
	public ModelAndView cityAdd(@ModelAttribute CityVo cityvo)
	{
		cityservice.insertCity(cityvo);
		
		return new ModelAndView ("redirect:/admin/viewCity.html");
	}

	@RequestMapping(value = "admin/deleteCityId.html" ,method = RequestMethod.GET )
	public ModelAndView cityDeleteSetId(@ModelAttribute CityVo cityvo,HttpServletRequest request)
	{
		int cityId = Integer.parseInt(request.getParameter("id"));
		cityvo.setId(cityId);
		
		List cityList = cityservice.deleteCity(cityvo); 
		
		CityVo cityvo1 = (CityVo) cityList.get(0);
		cityvo1.setStatus(false);
				
		cityservice.updateCity(cityvo1);
		
		return new ModelAndView ("");
	}
	
	@RequestMapping(value = "admin/deleteCity.html" ,method = RequestMethod.GET )
	public ModelAndView cityDelete(@ModelAttribute CityVo cityvo,HttpServletRequest request)
	{
		return new ModelAndView ("redirect:/admin/viewCity.html");
	}
	
	@RequestMapping(value = "admin/cityEdit.html" ,method = RequestMethod.GET )
	public ModelAndView category(@ModelAttribute CityVo cityvo,HttpServletRequest request)
	{
		int Id = Integer.parseInt(request.getParameter("id"));
		
		cityvo.setId(Id);
		
		List CityList = cityservice.searchCityId(cityvo); 
		System.out.print("Ls:::"+CityList);
				
		return new ModelAndView ("admin/jsonCity","citylist",CityList);
	}

}
