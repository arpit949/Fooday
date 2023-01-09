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

import com.fooday.model.CategoryVo;
import com.fooday.model.StateVo;
import com.fooday.service.StateService;

@Controller
public class StateContoller 
{
	@Autowired
	StateService stateservice;
	
	@RequestMapping(value = "admin/viewState.html" ,method = RequestMethod.GET )
	public ModelAndView state(@ModelAttribute StateVo statevo)
	{
		List stateList = stateservice.searchState(statevo); 
		return new ModelAndView ("admin/viewState","statelist",stateList).addObject("statevo",new StateVo());
	}
	
	@RequestMapping(value = "admin/addStateData.html" ,method = RequestMethod.POST )
	public ModelAndView stateAdd(@ModelAttribute StateVo statevo)
	{
		stateservice.insertState(statevo);
		
		return new ModelAndView ("redirect:/admin/viewState.html");
	}
		
	@RequestMapping(value = "admin/deleteStateId.html" ,method = RequestMethod.GET )
	public ModelAndView stateDeleteSetId(@ModelAttribute StateVo statevo,HttpServletRequest request)
	{
		int stateId = Integer.parseInt(request.getParameter("id"));
		statevo.setId(stateId);
		
		List stateList = stateservice.deleteState(statevo); 
		
		StateVo statevo1 = (StateVo) stateList.get(0);
		statevo1.setStatus(false);
				
		stateservice.updateState(statevo1);
		
		return new ModelAndView ("");
	}
	
	@RequestMapping(value = "admin/deleteState.html" ,method = RequestMethod.GET )
	public ModelAndView stateDelete(@ModelAttribute StateVo statevo,HttpServletRequest request)
	{
		return new ModelAndView ("redirect:/admin/viewState.html");
	}
	
	@RequestMapping(value = "admin/stateEdit.html" ,method = RequestMethod.GET )
	public ModelAndView category(@ModelAttribute StateVo statevo,HttpServletRequest request)
	{
		int Id = Integer.parseInt(request.getParameter("id"));
		
		statevo.setId(Id);
		
		List StateList = stateservice.searchStateId(statevo); 
		System.out.print("Ls:::"+StateList);
				
		return new ModelAndView ("admin/jsonState","statelist",StateList);
	}
}
