package com.example.enje.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.example.enje.entity.Person;

@Repository
public class PersonDAO {
	private static Map<Integer, Person> persons;
}
