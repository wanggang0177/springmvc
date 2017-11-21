package com.springstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/param")
public class ParamController 
{
	@RequestMapping(value = "/getDetail/{id}")
	public ModelAndView getDetail(@PathVariable(value="id") Integer id)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", id);
		mv.setViewName("parambind");
		return mv;
	}
	
	
	@RequestMapping(value="/**", method = {RequestMethod.GET})
	public ModelAndView urlTest()
	{
		System.out.println("---------urlTest-----------");
	    ModelAndView modelAndView = new ModelAndView();   
	    modelAndView.setViewName("parambind");  
	    return modelAndView;
	}
	
	
	@RequestMapping(value="/reg/{name:\\w+}-{age:\\d+}", method = {RequestMethod.GET})
	public ModelAndView regUrlTest(@PathVariable(value="name") String name, @PathVariable(value="age") Integer age){
	    System.out.println("---------regUrlTest----------");
	    ModelAndView modelAndView = new ModelAndView();   
	    modelAndView.addObject("name", name); 
	    modelAndView.addObject("age", age); 
	    modelAndView.setViewName("parambind");  
	    return modelAndView;
	}
	
	
	@RequestMapping(value="/paramstest", params="example", method = {RequestMethod.GET})
	public ModelAndView paramsTest(){
		System.out.println("--------paramsTest--------");
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.setViewName("parambind");
	    return modelAndView;
	}
	
	@RequestMapping(value="/paramstest2", params="example2=aaa", method = {RequestMethod.GET})
	public ModelAndView paramsTest2(){
		System.out.println("--------paramsTest2--------");
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.setViewName("parambind");
	    return modelAndView;
	}
}
