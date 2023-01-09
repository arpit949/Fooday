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
import com.fooday.service.CategoryService;

@Controller
public class CategoryContoller 
{
	@Autowired
	CategoryService categoryservice;
	
	@RequestMapping(value = "admin/viewCategory.html" ,method = RequestMethod.GET )
	public ModelAndView categoryView(@ModelAttribute CategoryVo categoryvo)
	{
		List categoryList = categoryservice.searchCategory(categoryvo); 
		return new ModelAndView ("admin/viewCategory","categorylist",categoryList).addObject("categoryvo", new CategoryVo());
	}
	
	@RequestMapping(value = "admin/addCategoryData.html" ,method = RequestMethod.POST )
	public ModelAndView categoryAdd(@ModelAttribute CategoryVo categoryvo)
	{
		categoryservice.insertCategory(categoryvo);
		
		return new ModelAndView ("redirect:/admin/viewCategory.html");
	}
	@RequestMapping (value="admin/deleteCategoryId.html" , method = RequestMethod.GET)
	public ModelAndView categoryDeleteSetId(@ModelAttribute CategoryVo categoryvo,HttpServletRequest request)
	{
		int categoryId = Integer.parseInt(request.getParameter("id"));
		categoryvo.setId(categoryId);
		
		List categoryList = categoryservice.deleteCategory(categoryvo); 
		
		CategoryVo categoryvo1 = (CategoryVo) categoryList.get(0);
		categoryvo1.setStatus(false);
				
		categoryservice.updateCategory(categoryvo1);
		
		return new ModelAndView("");
	}
	@RequestMapping(value = "admin/deleteCategory.html" ,method = RequestMethod.GET )
	public ModelAndView categoryDelete(@ModelAttribute CategoryVo categoryvo,HttpServletRequest request)
	{	
		return new ModelAndView ("redirect:/admin/viewCategory.html");
	}
	
	@RequestMapping(value = "admin/categoryEdit.html" ,method = RequestMethod.GET )
	public ModelAndView category(@ModelAttribute CategoryVo categoryvo,HttpServletRequest request)
	{
		int Id = Integer.parseInt(request.getParameter("id"));
		
		categoryvo.setId(Id);
		
		List CategoryList = categoryservice.searchCategoryId(categoryvo); 
		System.out.print("Ls:::"+CategoryList);
				
		return new ModelAndView ("admin/jsonCategory","categorylist",CategoryList);
	}
	
}
