package com.example.enje.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.enje.entity.ComplaintReasons;

public interface ComplaintReasonsRepository extends CrudRepository<ComplaintReasons, Integer> {

	@SuppressWarnings("unchecked")
	public ComplaintReasons save(ComplaintReasons complaintReasons);
}
