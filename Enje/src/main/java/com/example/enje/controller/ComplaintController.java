package com.example.enje.controller;

import java.util.Calendar;
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
import com.example.enje.entity.Productservice;
import com.example.enje.entity.Status;
import com.example.enje.service.CategoryService;
import com.example.enje.service.ComplaintService;
import com.example.enje.service.ComplaintsDataService;
import com.example.enje.service.ProductAndServiceService;
import com.example.enje.service.StatusService;

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

	@RequestMapping(value = "/productnService/{maincategoryid}")
	public ModelAndView getProductAndService(@PathVariable("maincategoryid") String maincategoryid) {

		ModelAndView mav = new ModelAndView();
		Category category = new Category();
		category.setMainCategoryId(maincategoryid);
		List<Productservice> productserviceData = productAndServiceService.findByCategory(category);

		mav.addObject("action", "prodnservdata");
		mav.addObject("productserviceData", productserviceData);
		mav.setViewName("fcrinvestigation_ajax");
		return mav;
	}

	@RequestMapping(value = "/saveComplaint", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView saveComplaint(@RequestBody ComplaintDetail complaintDetail, HttpSession session,
			HttpServletRequest request) {

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
		return null;
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
}
