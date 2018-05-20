package com.example.enje.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.enje.entity.Complaint;

public interface ComplaintRepository extends CrudRepository<Complaint, Integer> {

	public List<Complaint> findAll();
}
