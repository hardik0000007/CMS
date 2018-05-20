package com.example.enje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.enje.entity.Category;
import com.example.enje.entity.Productservice;
import com.example.enje.repository.ProductAndServiceRepository;

@Service
public class ProductAndServiceService {

	@Autowired
	ProductAndServiceRepository productAndServiceRepositor;

	public List<Productservice> findByCategory(Category category) {
		return productAndServiceRepositor.findByCategory(category);
	}
}
