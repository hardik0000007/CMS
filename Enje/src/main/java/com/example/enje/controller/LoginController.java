package com.example.enje.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.enje.entity.Category;
import com.example.enje.entity.Complaint;
import com.example.enje.entity.ComplaintDetail;
import com.example.enje.entity.Status;
import com.example.enje.entity.User;
import com.example.enje.service.CategoryService;
import com.example.enje.service.ComplaintService;
import com.example.enje.service.ComplaintsDataService;
import com.example.enje.service.LoginService;
import com.example.enje.service.StatusService;
import com.example.enje.service.UtilityService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class LoginController {

	@Value("${loginMessage}")
	private String loginMessage;

	@Value("${Role}")
	private String role;

	@Autowired
	LoginService loginService;

	@Autowired
	ComplaintsDataService complaintsDataService;

	@Autowired
	ComplaintService complaintService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	StatusService statusService;

	@Autowired
	UtilityService utilityService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView init(Model model) {

		ModelAndView mv = new ModelAndView();
		mv.addObject("loginMsg", loginMessage);
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@ModelAttribute("user") User user) {

		ModelAndView mav = null;
		User findUser = loginService.findByUsernamePassword(user.getUsername(), user.getPassword());

		ObjectMapper mapper = new ObjectMapper();

		List<String> list = new ArrayList<String>();
		list.add("List A");
		list.add("List B");
		list.add("List C");
		list.add("List D");
		list.add("List E");

		String json = "";
		String complaintJson = "";
		try {
			json = mapper.writeValueAsString(list);
			complaintJson = mapper.writeValueAsString(complaintsDataService.getComplaintWiseCount());
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (null != findUser) {

			session.setAttribute("username", user.getUsername());

			List<ComplaintDetail> complaintDetail = complaintsDataService
					.findTop6ByUserOrderByStatusDescStartDateDesc(user.getUsername());
			List<Complaint> complaintTypes = complaintService.findAll();
			List<Category> categoryList = categoryService.findAll();
			List<Status> statusList = statusService.findAll();

			mav = new ModelAndView("welcome");
			mav.addObject("userData", findUser);
			mav.addObject("complaintData", complaintDetail);
			mav.addObject("dataAvailabel", complaintDetail != null ? "true" : "false");
			mav.addObject("complaintTypes", complaintTypes);
			mav.addObject("categoryList", categoryList);
			mav.addObject("statusList", statusList);
			mav.addObject("user", user.getUsername());

			if (findUser.getUserRole().getRole().equalsIgnoreCase(role)) {

				mav.addObject("lastYears", utilityService.getLastFourYear());
				mav.addObject("forYear", "years");
				mav.addObject("complaintWiseCount", complaintJson);
			}

			mav.addObject("list", json);
		} else {
			mav = new ModelAndView("login");
			mav.addObject("loginMessage", "Username or Password is wrong!!");
		}
		return mav;
	}

}
