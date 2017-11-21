package com.springstudy.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springstudy.model.User;

@Controller
@RequestMapping(value="/databind2")
public class DataBindController2 
{
	
//	@RequestMapping(value="/requestbodybind", method = {RequestMethod.GET})
//	public String requestBodyBind(Model model){
//	    
//		System.out.println("........requestBodyBind..........");
//	    model.addAttribute("accountmodel", new User());
//	    return "databind2";
//	}
	
	@RequestMapping(value="/requestbodybind", method = {RequestMethod.GET})
	@ResponseBody
	public User requestBodyBindTest()
	{
		User u = new User();
		u.setUserName("111");
		u.setPassWord("afafa");
	    return u;
	}
	
	/**
	 * @RequestBody @ResponseBody ≤‚ ‘
	 * */
	@RequestMapping(value="/requestbodybind", method = {RequestMethod.POST})
	@ResponseBody
	public User requestBodyBind(@RequestBody User user)
	{
	    return user;
	}
}
