package com.example.enje.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.enje.entity.ComplaintReasons;
import com.example.enje.repository.ComplaintReasonsRepository;

@Service
public class ComplaintReasonsService {

	@Autowired
	private ComplaintReasonsRepository complaintReasonsRepository;

	public synchronized ComplaintReasons save(ComplaintReasons complaintReasons) {
		return complaintReasonsRepository.save(complaintReasons);
	}
}
