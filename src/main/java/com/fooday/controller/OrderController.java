package com.fooday.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.LoginVo;
import com.fooday.model.OrderVo;
import com.fooday.model.ProductVo;
import com.fooday.model.RestaurantVo;
import com.fooday.service.LoginService;
import com.fooday.service.OrderService;
import com.fooday.service.RestaurantService;
import com.fooday.utils.baseMethods;

@Controller
public class OrderController {

	@Autowired
	LoginService loginservice;
	
	@Autowired
	RestaurantService restaurantservice; 
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(value="restaurantAdmin/viewRestaurantOrder.html",method = RequestMethod.GET)
	public ModelAndView restaurantOrderView(@ModelAttribute OrderVo oderVo,LoginVo loginvo,RestaurantVo restaurantvo)
	{
		System.out.println("::viewRestaurantOrder.html");
		String username = baseMethods.getUser();
		loginvo.setUsername(username);

		System.out.println("::user::::"+username);
		
		List userData = loginservice.getStatus(loginvo);
		LoginVo loginVo2 = (LoginVo) userData.get(0);

		System.out.println("::id::::"+loginVo2.getLoginId()+"  "+loginVo2.getUsername());
		
		restaurantvo.setLoginvo(loginVo2);
		System.out.println("Rest:user::::"+restaurantvo.getLoginvo().getLoginId());
		
		List resList = restaurantservice.SearchRestaurantById(restaurantvo);
		RestaurantVo restVo = (RestaurantVo) resList.get(0);
		
		System.out.println("list:::"+resList);
		oderVo.setRestaurantvo(restVo);
		System.out.println(":user::::"+oderVo.getRestaurantvo().getRestaurantName());
		
		List orderList = orderService.getRestaurantOrderDetails(oderVo);
		System.out.println("::::orderList::"+orderList);

		return new ModelAndView("restaurantAdmin/viewOrder","orderList",orderList);
	}
	
	@RequestMapping(value="restaurantAdmin/deactivateOrder.html",method = RequestMethod.GET)
	public ModelAndView deactivateOrder(@ModelAttribute OrderVo orderVo,LoginVo loginvo,RestaurantVo restaurantvo,HttpServletRequest request)
	{
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		
		orderVo.setId(orderId);
		
		List orderList = orderService.getOrder(orderVo);
		
		OrderVo orderVo2 = (OrderVo) orderList.get(0);
		orderVo2.setStatus(false);
		orderService.deactivateOrder(orderVo2);
		
		return new ModelAndView("redirect:/restaurantAdmin/viewRestaurantOrder.html");
	}
	
	@RequestMapping(value="user/placeOrder.html",method = RequestMethod.GET)
	public ModelAndView insertOrder(@ModelAttribute OrderVo orderVo,LoginVo loginvo,RestaurantVo restaurantvo,HttpSession session,HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("productId"));
		
		String username = baseMethods.getUser();
		loginvo.setUsername(username);

		System.out.println("::user::::"+username);
		
		List userData = loginservice.getStatus(loginvo);
		LoginVo loginVo2 = (LoginVo) userData.get(0);

		System.out.println("::id::::"+loginVo2.getLoginId()+"  "+loginVo2.getUsername());
		
		ProductVo productVo =new ProductVo();
		RestaurantVo restVo = new RestaurantVo();
		Date date = new Date();
		
		productVo.setId(id);
		
		int restId = (Integer) request.getSession().getAttribute("restaurantId");
		System.out.println("::restId::"+restId);
		LoginVo loginVo3 = new LoginVo();
		loginVo3.setLoginId(restId);
		restVo.setLoginvo(loginVo3);
		List restList = restaurantservice.SearchRestaurantById(restVo);
		
		restVo = (RestaurantVo)restList.get(0);
		
		restaurantvo.setId(restVo.getId());
		
		System.out.println("::restId::"+restaurantvo.getId());
		
		orderVo.setLoginvo(loginVo2);
		orderVo.setRestaurantvo(restaurantvo);
		orderVo.setProductvo(productVo);
		orderVo.setOrderDate(date);
		orderVo.setStatus(true);
				
		orderService.insertOrder(orderVo);
		return new ModelAndView("redirect:/user/viewUserOrder.html");
	}
	
	@RequestMapping(value="user/viewUserOrder.html",method = RequestMethod.GET)
	public ModelAndView userOrderView(@ModelAttribute OrderVo oderVo,LoginVo loginvo,RestaurantVo restaurantvo)
	{
		System.out.println("::viewUserOrder.html");
		String username = baseMethods.getUser();
		loginvo.setUsername(username);

		System.out.println("::user::::"+username);
		
		List userData = loginservice.getStatus(loginvo);
		LoginVo loginVo2 = (LoginVo) userData.get(0);

		System.out.println("::id::::"+loginVo2.getLoginId()+"  "+loginVo2.getUsername());
			
		oderVo.setLoginvo(loginVo2);
				
		List orderList = orderService.getUserOrderDetails(oderVo);
		System.out.println("::::orderList::"+orderList);

		return new ModelAndView("user/cart","orderList",orderList);
	}
}
