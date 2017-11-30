package com.example.enje.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="bankstaff")
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "bankstaffid")
	private Long id;

	public Person(Long id) {
		this.id = id;
	}

	@Column(name = "username")
	private String userName;
	@Column(name = "emailid")
	private String emailId;
	@Column(name = "gender")
	private String gender;
	@Column(name = "password")
	private String password;

	public Person(String userName, String emailId, String gender, String password) {
		this.userName = userName;
		this.emailId = emailId;
		this.gender = gender;
		this.password = password;
	}

	public Person() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
