package com.example.enje.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.enje.entity.Person;

public interface PersonRepository extends CrudRepository<Person, Long>{

}
