<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</c:choose>
