package com.example.enje.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.enje.entity.Status;

public interface StatusRepository extends CrudRepository<Status, Integer> {

	public List<Status> findAll();
}
