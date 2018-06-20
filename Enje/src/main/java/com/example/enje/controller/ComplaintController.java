package com.example.enje.controller;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.enje.entity.Category;
import com.example.enje.entity.Complaint;
import com.example.enje.entity.ComplaintDetail;
import com.example.enje.entity.ComplaintReasons;
import com.example.enje.entity.Productservice;
import com.example.enje.entity.Status;
import com.example.enje.service.CategoryService;
import com.example.enje.service.ComplaintReasonsService;
import com.example.enje.service.ComplaintService;
import com.example.enje.service.ComplaintsDataService;
import com.example.enje.service.ProductAndServiceService;
import com.example.enje.service.StatusService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ComplaintController {

	@Value("${Investigation}")
	private String investigation;

	@Value("${Page}")
	private String page;

	@Value("${defaultComplaint}")
	private String defaultComplaint;

	@Autowired
	ProductAndServiceService productAndServiceService;

	@Autowired
	ComplaintsDataService complaintsDataService;

	@Autowired
	ComplaintService complaintService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	StatusService statusService;

	@Autowired
	ComplaintReasonsService complaintReasonsService;

	@RequestMapping(value = "/productnService/{maincategoryid}")
	public ModelAndView getProductAndService(@PathVariable("maincategoryid") String maincategoryid) {

		ModelAndView mav = new ModelAndView();
		Category category = new Category();
		category.setMainCategoryId(maincategoryid);
		List<Productservice> productserviceData = productAndServiceService.findByCategory(category);

		mav.addObject("action", "prodnservdata");
		mav.addObject("productserviceData", productserviceData);
		mav.setViewName("ajax");
		return mav;
	}

	@RequestMapping(value = "/saveComplaint", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView saveComplaint(@RequestBody ComplaintDetail complaintDetail, HttpSession session,
			HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		try {
			String newUniqueComplaintId = complaintsDataService.getUniqueComplaintId();
			newUniqueComplaintId = newUniqueComplaintId != null ? newUniqueComplaintId : defaultComplaint;

			ComplaintDetail complaintDetailNew = new ComplaintDetail();

			if (complaintDetail.getComplaint().getCid().equalsIgnoreCase(investigation)) {
				GregorianCalendar cal = new GregorianCalendar();
				cal.setTime(complaintDetail.getStartDate());
				cal.add(Calendar.DATE, 10);
				complaintDetail.setDueDate(cal.getTime());
			}
			complaintDetail.setUser(session.getAttribute("username").toString());
			complaintDetail.setComplaintId(newUniqueComplaintId);

			complaintDetailNew = complaintDetail;
			complaintDetailNew.getComplaintReasons().get(0).setMainComplaintId(newUniqueComplaintId);
			ComplaintDetail newComplaintDetail = complaintsDataService.save(complaintDetailNew);
			mav.addObject("answer", true);
			mav.setViewName("insupdajax");

		} catch (Exception ex) {
			System.out.println(ex.toString());

		}
		return mav;
	}

	@RequestMapping(value = { "/searchComplaint",
			"/searchComplaint/{whichPage}" }, consumes = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView searchComplaint(@PathVariable Optional<String> whichPage,
			@RequestBody ComplaintDetail complaintDetail, HttpSession session, HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		List<ComplaintDetail> searchComplaintDetail = complaintsDataService.findTop6BySearchComplaint(
				complaintDetail.getComplaintId(), complaintDetail.getCusomerNumber(),
				session.getAttribute("username").toString());

		System.out.println(searchComplaintDetail.get(0).getComplaintReasons().get(0).getComplaintReason());

		if (page.equalsIgnoreCase(whichPage.get())) {
			mav.setViewName("fcrinvestigationUpdate");
			List<Complaint> complaintTypes = complaintService.findAll();
			List<Category> categoryList = categoryService.findAll();
			List<Status> statusList = statusService.findAll();

			mav.addObject("complaintTypes", complaintTypes);
			mav.addObject("categoryList", categoryList);
			mav.addObject("statusList", statusList);
			mav.addObject("complaintData", searchComplaintDetail.get(0));
		} else {
			mav.setViewName("searchComplaint");
			mav.addObject("complaintData", searchComplaintDetail);
			mav.addObject("dataAvailabel", searchComplaintDetail != null ? "true" : "false");
		}

		return mav;
	}

	@RequestMapping(value = "/updateReason")
	public ModelAndView updateReason(@RequestBody ComplaintReasons complaintReasons) {
		ModelAndView mav = new ModelAndView();
		complaintReasonsService.save(complaintReasons);
		mav.addObject("answer", true);
		mav.setViewName("insupdajax");
		return mav;
	}

	@RequestMapping(value = "/chart/{year}/{month}")
	public ModelAndView chartData(@PathVariable("year") int year, @PathVariable("month") int month)
			throws JsonProcessingException {
		ModelAndView mav = new ModelAndView();

		GregorianCalendar gc = new GregorianCalendar(year, month - 1, 1);
		ObjectMapper mapper = new ObjectMapper();

		Date monthStartDate = new Date(gc.getTime().getTime());

		Calendar c = Calendar.getInstance();
		c.setTime(monthStartDate);
		c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH));

		int lastDate = Calendar.getInstance().getActualMaximum(Calendar.DAY_OF_MONTH);

		gc = new GregorianCalendar(year, month - 1, lastDate);
		Date monthEndDate = new Date(gc.getTime().getTime());

		String complaintJson = mapper
				.writeValueAsString(complaintsDataService.getComplaintWiseCount(monthStartDate, monthEndDate));

		mav.addObject("complaintWiseCount", complaintJson);
		mav.addObject("action", "chart");
		mav.setViewName("ajax");
		return mav;
	}

}
