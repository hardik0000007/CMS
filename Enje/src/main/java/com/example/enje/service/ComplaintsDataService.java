package com.example.enje.service;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.TemporalType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.enje.entity.ComplaintDetail;
import com.example.enje.repository.ComplaintsDataRepositiory;

@Service
public class ComplaintsDataService {

	@Autowired
	private ComplaintsDataRepositiory complaintsDataRepositiory;

	@Autowired
	EntityManagerFactory entityManagerFactory;

	public List<ComplaintDetail> findTop6ByUserOrderByStatusDescStartDateDesc(String userName) {

		return complaintsDataRepositiory.findTop6ByUserOrderByStatusDescStartDateDesc(userName);
	}

	public String getUniqueComplaintId() {

		return complaintsDataRepositiory.getUniqueComplaintId();
	}

	public synchronized ComplaintDetail save(ComplaintDetail complaintDetail) {
		return complaintsDataRepositiory.save(complaintDetail);
	}

	public List<ComplaintDetail> findTop6BySearchComplaint(String complaintId, String customerNumber, String userName) {
		return complaintsDataRepositiory.findTop6BySearchComplaint(complaintId, customerNumber, userName);
	}

	public List<Object[]> getComplaintWiseCount(Date startDate, Date endDate) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		/*
		 * @SuppressWarnings("unchecked") List<Object[]> results = entityManager
		 * .createNativeQuery(
		 * "SELECT A.maincategory, COUNT(C.maincategoryid) AS total from complaintdetail AS C INNER JOIN category AS A ON C.maincategoryid = A.maincategoryid group by C.maincategoryid"
		 * ) .getResultList();
		 */

		Query nativeQuery = entityManager.createNativeQuery(
				"SELECT A.maincategory, COUNT(C.maincategoryid) AS total from complaintdetail AS C INNER JOIN category AS A ON C.maincategoryid = A.maincategoryid "
						+ " and C.startdate between STR_TO_DATE(?1, '%Y-%m-%d') AND STR_TO_DATE(?2, '%Y-%m-%d') group by C.maincategoryid");
		nativeQuery.setParameter(1, startDate, TemporalType.DATE);

		System.out.println(endDate);
		nativeQuery.setParameter(2, endDate, TemporalType.DATE);

		List<Object[]> results = nativeQuery.getResultList();

		return results;
	}

	public List<Object[]> getComplaintWiseCount() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		@SuppressWarnings("unchecked")
		List<Object[]> results = entityManager
				.createNativeQuery(
						"SELECT A.maincategory, COUNT(C.maincategoryid) AS total from complaintdetail AS C INNER JOIN category AS A ON C.maincategoryid = A.maincategoryid group by C.maincategoryid")
				.getResultList();

		return results;
	}

}
