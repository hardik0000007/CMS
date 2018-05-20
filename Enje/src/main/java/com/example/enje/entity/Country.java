package com.example.enje.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "country")
public class Country {

	@Id
	@Column(name = "countryid")
	private String countryId;
	@Column(name = "countryname")
	private String countryName;

	public String getCountryId() {
		return countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public Country(String countryId, String countryName) {
		super();
		this.countryId = countryId;
		this.countryName = countryName;
	}

	public Country() {
		super();
	}

}
