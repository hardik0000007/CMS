package com.example.enje.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.enje.entity.Person;
import com.example.enje.service.PersonService;

@Controller
public class PersonController {

	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/staffmember", method = RequestMethod.GET)
	@ResponseBody
	public Object getAllData() {
		return personService.findAll();
	}

	@RequestMapping(value = "/create", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Person person) {
		String userId = "";
		try {
			personService.save(person);
			userId = String.valueOf(person.getId());
		} catch (Exception ex) {
			return "error creating the user " + ex.getMessage();
		}
		return "User successfully created with id " + userId;
	}

	@RequestMapping(value = "/delete/{id}")
	@ResponseBody
	public String delete(@PathVariable Long id) {
		try {
			Person person = personService.findById(id);
			personService.delete(person);
		} catch (Exception ex) {
			return "error deleting the user " + ex.getMessage();
		}
		return "User deleted successfully";
	}

	@RequestMapping(value = "/update/{id}")
	@ResponseBody
	public String update(@RequestBody Person person, @PathVariable Long id) {
		try{
		person.setId(id);
		personService.save(person);
		}
		catch(Exception ex)
		{
			return "error updating the user " + ex.getMessage();
		}
		return "User updated successfully";
	}
}
