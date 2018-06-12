package com.example.enje.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.enje.service.UtilityService;

@Controller
public class UtilityController {

	@Autowired
	UtilityService utilityService;

	@RequestMapping(value = "/year/{year}")
	public ModelAndView getMonth(@PathVariable("year") String year) {
		ModelAndView mav = new ModelAndView("ajax");
		mav.addObject("action", "month");
		mav.addObject("months", utilityService.getMonthOfYear(Integer.parseInt(year)));
		return mav;
	}
}
