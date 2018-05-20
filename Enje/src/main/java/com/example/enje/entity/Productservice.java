package com.example.enje.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "productservice")
public class Productservice {

	@Id
	@Column(name = "mainprodserviceid")
	private String mainProdServiceId;

	@Column(name = "mainprodservice")
	private String mainProdService;

	@JoinColumn(name = "maincategoryid")
	@ManyToOne
	private Category category;

	public String getMainProdServiceId() {
		return mainProdServiceId;
	}

	public void setMainProdServiceId(String mainProdServiceId) {
		this.mainProdServiceId = mainProdServiceId;
	}

	public String getMainProdService() {
		return mainProdService;
	}

	public void setMainProdService(String mainProdService) {
		this.mainProdService = mainProdService;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
