package com.example.enje.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.enje.entity.Category;
import com.example.enje.entity.Productservice;

public interface ProductAndServiceRepository extends CrudRepository<Productservice, Integer> {

	public List<Productservice> findByCategory(Category category);
}
