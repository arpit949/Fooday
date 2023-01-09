package com.fooday.configuration;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.fooday.model.LoginVo;
import com.fooday.service.LoginService;
import com.fooday.utils.baseMethods;

@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler 
{
	@Autowired
	LoginService loginservice;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// set our response to OK status
		response.setStatus(HttpServletResponse.SC_OK);

		boolean admin = false;
		boolean restaurant = false;
		boolean user = false;

		System.out.println("AT onAuthenticationSuccess(...) function!");

		for (GrantedAuthority auth : authentication.getAuthorities()) {
			if ("ROLE_ADMIN".equals(auth.getAuthority())) {
				admin = true;
			} else if ("ROLE_RESTAURANT".equals(auth.getAuthority())) {
				restaurant = true;
			} else if ("ROLE_USER".equals(auth.getAuthority())) {
				user = true;
			}else {

			}
		}

		if (admin) {
			System.out.println("user is admin");
			response.sendRedirect("/admin/index");
		}
		else if (restaurant) 
		{
			LoginVo loginvo = new LoginVo();
			String username = baseMethods.getUser();
			loginvo.setUsername(username);
			List loginList = loginservice.getStatus(loginvo);
			
			if(!loginList.isEmpty())
			{
				System.out.println("user is restaurant admin name is "+username);
				HttpSession session = request.getSession();
				session.setAttribute("userName", username);
				response.sendRedirect("/restaurantAdmin/index");
			}
			else
			{
				System.out.println("user is anonymous");
				response.sendRedirect("/403");
			}
		}

		else if (user) 
		{
			LoginVo loginvo = new LoginVo();
			String username = baseMethods.getUser();
			loginvo.setUsername(username);
			List loginList = loginservice.getStatus(loginvo);
			
			if(!loginList.isEmpty())
			{
				System.out.println("user is restaurant admin name is "+username);
				HttpSession session = request.getSession();
				session.setAttribute("userName", username);
				response.sendRedirect("/user/index");
			}
			else
			{
				System.out.println("user is anonymous");
				response.sendRedirect("/403");
			}
		}
		else
		{
			System.out.println("user is anonymous");
			response.sendRedirect("/403");
		}
	}
}
