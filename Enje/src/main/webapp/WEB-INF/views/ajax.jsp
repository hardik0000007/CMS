<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="${pageContext.request.contextPath}/js/chart/chart.js"></script>
<c:choose>
	<c:when test="${action eq 'prodnservdata'}">
		<select name="productnservice" id="productnservice"
			style="overflow: initial; border: 2px outset #000000;">
			<option value="">--Product & Service--</option>
			<c:forEach items="${productserviceData}" var="productserviceData">
				<option value="${productserviceData.mainProdServiceId}">${productserviceData.mainProdService}</option>
			</c:forEach>
		</select>
	</c:when>
	<c:when test="${action eq 'month'}">
		<select name="month" id="month"
			style="overflow: initial; border: 2px outset #000000;"
			onchange="selectMonthChart(this);anotherCall();">
			<option value="">--Month--</option>
			<c:forEach items="${months}" var="month">
				<option value="${month.key}">${month.value}</option>
			</c:forEach>
		</select>
	</c:when>
	<c:when test="${action eq 'chart'}">
		<jsp:include page="admin/complaintchart.jsp">
			<jsp:param name="complaintWiseCount" value="${complaintWiseCount}"></jsp:param>
		</jsp:include>
	</c:when>
</c:choose>
