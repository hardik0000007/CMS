package com.example.enje.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "city")
public class City {

	/*
	 * @GeneratedValue(strategy = GenerationType.AUTO)
	 * 
	 * @Column(name = "id") private Long id;
	 */

	@Id
	@Column(name = "cityid")
	private String cityId;
	@Column(name = "cityname")
	private String cityName;

	@JoinColumn(name = "state")
	@ManyToOne
	private State state;

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public City(String cityId, String cityName, State state) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.state = state;
	}

	public City() {
		super();
	}

}
