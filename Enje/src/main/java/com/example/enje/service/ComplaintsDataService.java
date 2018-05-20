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

	public List<ComplaintDetail> findByUser(String userName) {
		return complaintsDataRepositiory.findByUser(userName);
	}

	public String getUniqueComplaintId() {
		return complaintsDataRepositiory.getUniqueComplaintId();
	}

	public synchronized ComplaintDetail save(ComplaintDetail complaintDetail) {
		return complaintsDataRepositiory.save(complaintDetail);
	}
}
