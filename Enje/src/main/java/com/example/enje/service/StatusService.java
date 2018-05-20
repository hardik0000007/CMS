package com.example.enje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.enje.entity.Status;
import com.example.enje.repository.StatusRepository;

@Service
public class StatusService {

	@Autowired
	private StatusRepository statusRepository;

	public List<Status> findAll() {
		return statusRepository.findAll();
	}
}
