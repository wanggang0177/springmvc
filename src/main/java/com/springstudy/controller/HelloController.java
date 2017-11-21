package com.springstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/helloworld")
public class HelloController 
{

	@RequestMapping(value="/hello", method = {RequestMethod.GET})
    public ModelAndView hello()
	{
              ModelAndView mv =new ModelAndView();
              mv.addObject("spring", "spring mvc");
              mv.setViewName("hello");
              return mv;
    }
}
