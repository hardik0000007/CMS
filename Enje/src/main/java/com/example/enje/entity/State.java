package com.example.enje.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "state")
public class State {

	/*
	 * @Id
	 * 
	 * @GeneratedValue(strategy = GenerationType.AUTO)
	 * 
	 * @Column(name = "id") private Long id;
	 */

	@Id
	@Column(name = "stateid")
	private String stateId;
	@Column(name = "statename")
	private String stateName;

	@JoinColumn(name = "country")
	@ManyToOne
	private Country country;

	public String getStateId() {
		return stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public State(String stateId, String stateName, Country country) {
		super();
		this.stateId = stateId;
		this.stateName = stateName;
		this.country = country;
	}

	public State() {
		super();
	}

}
