package com.example.enje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.enje.entity.ComplaintDetail;
import com.example.enje.repository.ComplaintsDataRepositiory;

@Service
public class ComplaintsDataService {

	@Autowired
	private ComplaintsDataRepositiory complaintsDataRepositiory;

	public List<ComplaintDetail> findTop6ByUserOrderByStatusDescStartDateDesc(String userName) {
		return complaintsDataRepositiory.findTop6ByUserOrderByStatusDescStartDateDesc(userName);
	}

	public String getUniqueComplaintId() {
		return complaintsDataRepositiory.getUniqueComplaintId();
	}

	public synchronized ComplaintDetail save(ComplaintDetail complaintDetail) {
		return complaintsDataRepositiory.save(complaintDetail);
	}

	public List<ComplaintDetail> findTop6BySearchComplaint(String complaintId, String customerNumber, String userName) {
		return complaintsDataRepositiory.findTop6BySearchComplaint(complaintId, customerNumber, userName);
	}
}
