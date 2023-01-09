package com.fooday.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.AreaVo;
import com.fooday.model.CityVo;
import com.fooday.model.StateVo;
import com.fooday.service.AreaService;
import com.fooday.service.CityService;
import com.fooday.service.StateService;

@Controller
public class AreaContoller 
{
	@Autowired	StateService stateservice;
	
	@Autowired	CityService cityservice;
	
	@Autowired	AreaService areaservice;

	@RequestMapping(value = "admin/viewArea.html" ,method = RequestMethod.GET )
	public ModelAndView area(@ModelAttribute AreaVo areavo)
	{	
		System.out.println("search");
		List areaList = areaservice.searchArea(areavo); 
		System.out.println(areaList);
		return new ModelAndView ("admin/viewArea","areavo",new AreaVo()).addObject("arealist",areaList);
	}
	@RequestMapping(value = "admin/stateId.html" ,method = RequestMethod.GET )
	public ModelAndView state(@ModelAttribute StateVo statevo)
	{
		List statelist=stateservice.searchState(statevo);
		
		return new ModelAndView ("admin/jsonState","statelist",statelist);
	}
	@RequestMapping(value = "admin/stateData.html" ,method = RequestMethod.GET )
	public ModelAndView citySearch(@ModelAttribute StateVo statevo , CityVo cityvo , HttpServletRequest request)
	{
		int stateId = Integer.parseInt(request.getParameter("id"));
		
		System.out.println("Stateid:"+stateId);
		
		statevo.setId(stateId);
		cityvo.setStatevo(statevo);
		
		List citylist=cityservice.jsonCity(cityvo);
		
		return new ModelAndView ("admin/jsonCity","citylist",citylist);
	}

	@PostMapping(value = "admin/addAreaData.html" )
	public ModelAndView areAdd(@ModelAttribute StateVo statevo,CityVo cityvo ,AreaVo areavo ,HttpServletRequest request)
	{
		areaservice.insertArea(areavo);
		
		return new ModelAndView ("redirect:/admin/viewArea.html");
	}
	@RequestMapping (value="admin/deleteAreaId.html" , method=RequestMethod.GET)
	public ModelAndView areaDeleteSetId(@ModelAttribute AreaVo areavo , HttpServletRequest request)
	{
		System.out.println("In set id::");
		int areaId = Integer.parseInt(request.getParameter("id"));
		areavo.setId(areaId);
		
		List areaList = areaservice.deleteArea(areavo); 
		
		AreaVo areavo1 = (AreaVo) areaList.get(0);
		areavo1.setStatus(false);
				
		this.areaservice.updateArea(areavo1);
		
		return new ModelAndView ("");
	}
	@RequestMapping(value = "admin/deleteArea.html" ,method = RequestMethod.GET )
	public ModelAndView areaDelete(@ModelAttribute AreaVo areavo,HttpServletRequest request)
	{
		System.out.println("in delete area");
		
		return new ModelAndView ("redirect:/admin/viewArea.html");
	}
	
	@RequestMapping(value = "admin/areaEdit.html" ,method = RequestMethod.GET )
	public ModelAndView areaEdit(@ModelAttribute AreaVo areavo , HttpServletRequest request)
	{
		int Id = Integer.parseInt(request.getParameter("id"));
		System.out.println("Id="+Id);
		areavo.setId(Id);
		
		List arealist=areaservice.jsonArea(areavo);
		
		return new ModelAndView ("admin/jsonArea","areaList",arealist);
	}

}
