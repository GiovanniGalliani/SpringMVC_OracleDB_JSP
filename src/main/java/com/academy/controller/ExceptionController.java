package com.academy.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception exc) {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("exception", exc);
		return mv;
	}

}
