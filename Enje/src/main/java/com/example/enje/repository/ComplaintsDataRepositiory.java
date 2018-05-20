package com.example.enje.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.example.enje.entity.ComplaintDetail;

public interface ComplaintsDataRepositiory extends CrudRepository<ComplaintDetail, Integer> {

	public List<ComplaintDetail> findByUser(String userName);

	@Query(value = "select concat(SUBSTR(complaintid,1,4) ,LPAD(max(cast(SUBSTR(complaintid,5) as signed Integer))+1,6,'0')) from ssk.complaintdetail", nativeQuery = true)
	public String getUniqueComplaintId();

	@SuppressWarnings("unchecked")
	public ComplaintDetail save(ComplaintDetail complaintDetail);
}
