package com.example.enje.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.enje.entity.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {

	public List<Category> findAll();
}
