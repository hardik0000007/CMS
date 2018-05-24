<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="ui celled table tablet stackable">
	<thead>
		<tr>
			<th>Status</th>
			<th>Complaint ID</th>
			<th>Complaint Type</th>
			<th>Category</th>
			<th>Product / Service</th>
			<th>Start Date</th>
			<th>Due Date</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${dataAvailabel eq 'true'}">
				<c:forEach items="${complaintData}" var="complaintData">
					<tr>
						<td><c:choose>
								<c:when test="${complaintData.status.statusId eq 'c'}">
									<div class="ui ribbon red label">
								</c:when>
								<c:otherwise>
									<div class="ui ribbon green label">
								</c:otherwise>
							</c:choose> ${complaintData.status.statusType}
							</div></td>
						<td>${complaintData.complaintId}</td>
						<td>${complaintData.complaint.complaintType}</td>
						<td>${complaintData.category.mainCategory}</td>
						<td>${complaintData.productservice.mainProdService}</td>
						<td>${complaintData.startDate}</td>
						<td align="center"><c:choose>
								<c:when test="${complaintData.dueDate eq null }">-</c:when>
								<c:otherwise>${complaintData.dueDate}</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="6">No Complaint Found.</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>