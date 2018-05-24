package com.example.enje.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.example.enje.entity.ComplaintDetail;

public interface ComplaintsDataRepositiory extends CrudRepository<ComplaintDetail, Integer> {

	public List<ComplaintDetail> findTop6ByUserOrderByStatusDescStartDateDesc(String userName);

	@Query(value = "select concat(SUBSTR(complaintid,1,4) ,LPAD(max(cast(SUBSTR(complaintid,5) as signed Integer))+1,6,'0')) from ssk.complaintdetail", nativeQuery = true)
	public String getUniqueComplaintId();

	@SuppressWarnings("unchecked")
	public ComplaintDetail save(ComplaintDetail complaintDetail);

	@Query(value = "select * from ssk.complaintdetail where (complaintid = ?1 or UPPER(cusomernumber) = UPPER(?2)) and user = ?3", nativeQuery = true)
	public List<ComplaintDetail> findTop6BySearchComplaint(String complaintId, String customerNumber, String userName);
}
