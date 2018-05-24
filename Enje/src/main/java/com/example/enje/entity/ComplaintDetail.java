package com.example.enje.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "complaintdetail")
public class ComplaintDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	@Column(name = "complaintid")
	private String complaintId;

	@JoinColumn(name = "cid")
	@ManyToOne
	private Complaint complaint;

	@JoinColumn(name = "status")
	@OneToOne
	private Status status;

	@Column(name = "user")
	private String user;

	@JoinColumn(name = "maincategoryid")
	@OneToOne
	private Category category;

	@JoinColumn(name = "mainprodserviceid")
	@OneToOne
	private Productservice productservice;

	@Temporal(TemporalType.DATE)
	@Column(name = "startdate")
	private Date startDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "duedate")
	private Date dueDate;

	@Column(name = "reason")
	private String reason;

	@Column(name = "email")
	private String email;

	@Column(name = "phoneno")
	private String phoneNo;

	@Column(name = "cusomernumber")
	private String cusomerNumber;

	public ComplaintDetail() {
		super();
	}

	public ComplaintDetail(int id, String complaintId, Complaint complaint, Status status, String user,
			Category category, Productservice productservice, Date startDate, Date dueDate, String reason, String email,
			String phoneNo, String cusomerNumber) {
		super();
		this.id = id;
		this.complaintId = complaintId;
		this.complaint = complaint;
		this.status = status;
		this.user = user;
		this.category = category;
		this.productservice = productservice;
		this.startDate = startDate;
		this.dueDate = dueDate;
		this.reason = reason;
		this.email = email;
		this.phoneNo = phoneNo;
		this.cusomerNumber = cusomerNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(String complaintId) {
		this.complaintId = complaintId;
	}

	public Complaint getComplaint() {
		return complaint;
	}

	public void setComplaint(Complaint complaint) {
		this.complaint = complaint;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Productservice getProductservice() {
		return productservice;
	}

	public void setProductservice(Productservice productservice) {
		this.productservice = productservice;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getCusomerNumber() {
		return cusomerNumber;
	}

	public void setCusomerNumber(String cusomerNumber) {
		this.cusomerNumber = cusomerNumber;
	}

}
