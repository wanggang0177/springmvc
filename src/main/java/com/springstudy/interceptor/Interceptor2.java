package com.springstudy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor2 extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String userName = request.getParameter("userName");
		if(!userName.equalsIgnoreCase("wangg"))
		{
			System.out.println(request.getContextPath()+"/hello.jsp");
			response.sendRedirect(request.getContextPath()+"/hello.jsp");
			return false;
		}
		System.out.println("Interceptor2:preHandle.....");
		return true;
	}
	
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("Interceptor2:postHandle");
	}
}
