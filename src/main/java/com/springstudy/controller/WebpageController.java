package com.springstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/Webpage")
public class WebpageController 
{

	@RequestMapping(value="/index", method = {RequestMethod.GET})
    public ModelAndView index()
	{
              ModelAndView mv =new ModelAndView();
              mv.setViewName("index");
              return mv;
    }
	
	@RequestMapping(value="/notice", method = {RequestMethod.GET})
	public ModelAndView notice()
	{
              ModelAndView mv =new ModelAndView();
              mv.setViewName("notice");
              return mv;
    }
	
	@RequestMapping(value="/parambind", method = {RequestMethod.GET})
	public ModelAndView parambind()
	{

        ModelAndView mv =new ModelAndView();
        mv.setViewName("parambind");
        return mv;

	}
	
	@RequestMapping(value="/databind", method = {RequestMethod.GET})
	public ModelAndView databind()
	{
        ModelAndView mv =new ModelAndView();
        mv.setViewName("databind");
        return mv;
	}
	
	
	@RequestMapping(value="/databind2", method = {RequestMethod.GET})
	public ModelAndView databind2()
	{
        ModelAndView mv =new ModelAndView();
        mv.setViewName("databind2");
        return mv;
	}
}
