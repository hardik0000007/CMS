package com.example.enje.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "complaintreasons")
public class ComplaintReasons {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "maincomplaintid")
	private String mainComplaintId;

	@Column(name = "complaintreason")
	private String complaintReason;

	@Column(name = "raisetime", columnDefinition = "DATETIME", insertable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date raisedDate;

	public Date getRaisedDate() {
		return raisedDate;
	}

	public void setRaisedDate(Date raisedDate) {
		this.raisedDate = raisedDate;
	}

	public String getMainComplaintId() {
		return mainComplaintId;
	}

	public void setMainComplaintId(String mainComplaintId) {
		this.mainComplaintId = mainComplaintId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplaintReason() {
		return complaintReason;
	}

	public void setComplaintReason(String complaintReason) {
		this.complaintReason = complaintReason;
	}
}
