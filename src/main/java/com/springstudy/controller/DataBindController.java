package com.springstudy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springstudy.model.User;

@Controller
@RequestMapping(value="/databind")
@SessionAttributes(value = {"sessionaccountmodel","userBind"},types={User.class})
public class DataBindController 
{
	
	@ModelAttribute("sessionaccountmodel")
	public User initUser()
	{
	    return new User();
	}
	
	@ModelAttribute("userBind")
	public User initUser2()
	{
		User user = new User();
		user.setUserName("setUserName");
		user.setPassWord("setPassWord");
	    return new User();
	}
	
	/**
	 * 文件上传
	 * */
	@RequestMapping(value = "/uploadFile")
	public ModelAndView dataBindUploadFile(HttpServletRequest request,@RequestParam("urlParam") String urlParam,@RequestParam("formParam") String formParam,@RequestParam("formFile") MultipartFile formFile)
	{
		
//		request.getParameter("");
		System.out.println("urlParam = " + urlParam);
		System.out.println("formParam" + formParam);
		System.out.println("formFile = " + formFile.getOriginalFilename());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("urlParam", urlParam);
		mv.addObject("formParam", formParam);
		mv.addObject("formFileName", formFile.getOriginalFilename());
		mv.setViewName("databind");
		return mv;
	}
	
	
	/**
	 * 参数model绑定
	 * */
	@RequestMapping(value = "/form")
	public String form(HttpServletRequest request, Model model,User user)
	{
		model.addAttribute("user", user);
		return "databind";
	}
	
	/**
	 * 测试@ModelAttribute
	 * */
	@RequestMapping(value = "/form2")
	public String form2(HttpServletRequest request, @ModelAttribute(value="userBind") User user)
	{
		return "databind";
	}
	
	
	/**
	 * 获取cookie
	 * */
	@RequestMapping(value="/cookiebind", method = {RequestMethod.GET})
	public String cookieBind(HttpServletRequest request, Model model, @CookieValue(value="JSESSIONID", defaultValue="") String jsessionId){
	    model.addAttribute("jsessionId", jsessionId);
	    return "databind";
	}
	
	/**
	 * 获取user agent
	 * */
	@RequestMapping(value="/headerbind", method = {RequestMethod.GET})
	public String requestHeaderBind(HttpServletRequest request, Model model, @RequestHeader(value="User-Agent", defaultValue="") String userAgent){
	    
	    model.addAttribute("userAgent", userAgent);
	    return "databind";
	}
	
	/**
	 * 
	 * 测试@SessionAttributes
	 * 
	 * */
	@RequestMapping(value="/usernamebind", method = {RequestMethod.POST})
	public String userNameBindPost( @ModelAttribute("sessionaccountmodel") User user){
	    //重定向到密码绑定测试
	    return "redirect:passwordbind";
	}
	
	@RequestMapping(value="/passwordbind", method = {RequestMethod.GET})
	public String passwordBind(@ModelAttribute("sessionaccountmodel") User user){
	    
	    return "databind";
	}
	
	@RequestMapping(value="/passwordbind", method = {RequestMethod.POST})
	public String passwordBindPost(@ModelAttribute("sessionaccountmodel") User user, SessionStatus status){
	    //销毁@SessionAttributes存储的对象
	    status.setComplete();
	    //显示绑定结果
	    return "databind";
	}
	
	
	/**
	 * @RequestBody @ResponseBody 测试
	 * */
	@RequestMapping(value="/requestbodybind", method = {RequestMethod.POST})
	public @ResponseBody User requestBodyBind(@RequestBody User user)
	{
	    return user;
	}
}
