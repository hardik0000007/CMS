<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<div class="row">
	<div
		class="sixteen wide mobile sixteen wide tablet sixteen wide computer column">
		<div class="ui segments">
			<div class="ui segment">
				<h4 class="ui header" style="height: 20px">
					Complaints <img class="circular image"
						src="${pageContext.request.contextPath}/images/icons/pencil.ico"
						alt="New..." align="right"
						style="height: 20px; padding-right: 10px"
						onclick="changeView('fcrinv')" /> <img class="circular image"
						src="${pageContext.request.contextPath}/images/icons/search.ico"
						alt="Search..." align="right"
						style="height: 20px; padding-right: 10px"
						onclick="changeView('view')" />
				</h4>
			</div>
			<jsp:include page="search.jsp">
				<jsp:param name="userData" value="${user}"></jsp:param>
			</jsp:include>

			<div class="ui segment" id="complaintDiv">
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
										<td><a href="#" style="text-decoration: underline;"   onclick="getComplaintDetail('${complaintData.complaintId}')">${complaintData.complaintId}</a></td>
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
			</div>
			<jsp:include page="fcrinvestigation.jsp">
				<jsp:param name="dataAvailabel" value="${dataAvailabel}"></jsp:param>
				<jsp:param name="complaintTypes" value="${complaintTypes}"></jsp:param>
				<jsp:param name="categoryList" value="${categoryList}"></jsp:param>
				<jsp:param name="statusList" value="${statusList}"></jsp:param>
			</jsp:include>
		</div>
	</div>
</div>
