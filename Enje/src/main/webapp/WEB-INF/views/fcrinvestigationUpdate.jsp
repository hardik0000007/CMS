<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<script src="${pageContext.request.contextPath}/js/complaintData/complaintData.js"></script>
<input type="hidden" value="${complaintData.id}" id="originalComplaintId"/>
<tr>

	<td><label>Complaint Type</label></td>
	<td>
		<div>
			<select name="updatecType" id="updatecType"
				style="overflow: initial; border: 2px outset #000000;" disabled="disabled">
				<c:forEach items="${complaintTypes}" var="complaintTypes">
					<option
						<c:if test="${complaintData.complaint.cid eq complaintTypes.cid}">
						selected="selected"
					</c:if>
						value="${complaintTypes.cid}">
						${complaintTypes.complaintType}</option>
				</c:forEach>
			</select>
		</div>
	</td>
	<td><label>Customer Number</label></td>
	<td>
		<div>
			<input type="text" name="updatecountry" maxlength="2" size="2" id="updatecountry"
				style="overflow: initial; border: 2px outset #000000;" value="${fn:substring(complaintData.cusomerNumber, 0, 2)}" readonly="readonly"> <input
				type="text" name="updatebranch" maxlength="4" size="4" id="updatebranch"
				style="overflow: initial; border: 2px outset #000000;" value="${fn:substring(complaintData.cusomerNumber, 2, 6)}" readonly="readonly"> <input
				type="text" name="updateacctNum" maxlength="6" size="6" id="updateacctNum"
				style="overflow: initial; border: 2px outset #000000;" value="${fn:substring(complaintData.cusomerNumber, 6, 12)}" readonly="readonly"> <input
				type="text" name="updateccd" maxlength="3" size="3" id="updateccd"
				style="overflow: initial; border: 2px outset #000000;" value="${fn:substring(complaintData.cusomerNumber, 12, 15)}" readonly="readonly">
		</div>
	</td>
	<td><label>Date Raise</label></td>
	<td>
		<div>
			<input type="text" id="updateraisedDate" class="datedrop"
				placeholder="Search..."
				style="overflow: initial; border: 2px outset #000000;" value="${complaintData.startDate}">
		</div>
	</td>
</tr>
<tr>
	<td><label>Category</label></td>
	<td>
		<div>
			<select name="updatecategory" id="updatecategory"
				style="overflow: initial; border: 2px outset #000000;"
				onchange="javascript:changeCategory(this)" disabled="disabled">
				<option value="">--Category--</option>
				<c:forEach items="${categoryList}" var="categoryList">
					<option 
					<c:if test="${complaintData.category.mainCategoryId eq categoryList.mainCategoryId}">
						selected="selected"
					</c:if>
					value="${categoryList.mainCategoryId}">${categoryList.mainCategory}</option>
				</c:forEach>
			</select>
		</div>
	</td>
	<td><label>Product & Service</label></td>
	<td colspan="3">
		<div id="updatepronserv">
			<select name="updateproductnservice" id="updateproductnservice"
				style="overflow: initial; border: 2px outset #000000;" disabled="disabled">
					<option 
					value="${complaintData.productservice.mainProdServiceId}">${complaintData.productservice.mainProdService}</option>
			</select>
		</div>
	</td>
</tr>
<tr>
	<td><label>Mobile number</label></td>
	<td>
		<div>
			<input type="text" name="updatemobileno" id="updatemobileno" size="10"
				maxlength="10" value="${complaintData.phoneNo}"
				style="overflow: initial; border: 2px outset #000000;" readonly="readonly">
		</div>
	</td>
	<td><label>Email Id</label></td>
	<td colspan="3">
		<div>
			<input type="text" name="updateemailid" id="updateemailid" size="40"
				maxlength="40" value="${complaintData.email}"
				style="overflow: initial; border: 2px outset #000000;" readonly="readonly">
		</div>
	</td>
</tr>
<tr>
	<td>Previous Reason</td>
	<td colspan="3">
		<div style="wordWrap:break-word">
			<c:forEach items="${complaintData.complaintReasons}" var="reasons">
					<label ><b>${reasons.complaintReason}</b></label><br>
				</c:forEach>
		</div>
	</td>
	<td>Last Comment On:</td>
	<td>
		<div>
			<c:forEach items="${complaintData.complaintReasons}" var="reasons">
					<label><b>${reasons.raisedDate}</b></label><br>
				</c:forEach>
		</div>
	</td>
</tr>
<tr <c:if test="${complaintData.status.statusId eq 'c'}">style="display:none;"</c:if>>
	<td>Reason</td>
	<td colspan="5">
		<div>
			<textarea id="updatereason" maxlength="350" rows="5" cols="70" 
				style="align-content: left; overflow: initial; border: 2px outset #000000;"></textarea>
		</div>
	</td>
</tr>
<tr>
	<td>Status</td>
	<td colspan="2">
		<div>
			<select name="updatestatus" id="updatestatus"
				style="overflow: initial; border: 2px outset #000000;">
				<c:forEach items="${statusList}" var="statusList">
					<option 
						<c:if test="${complaintData.status.statusId eq statusList.statusId}">
						selected="selected"
					</c:if>
					value="${statusList.statusId}">${statusList.statusType}</option>
				</c:forEach>
			</select>
		</div>
	</td>
	<td colspan="3" ><input <c:if test="${complaintData.status.statusId eq 'c'}">style="display:none;"</c:if>type="reset" style="margin-bottom: 0px" class="ui clear button" value="Reset"
		id="updateresetBtn" name="updateresetBtn"> <input <c:if test="${complaintData.status.statusId eq 'c'}">style="display:none;"</c:if> type="button"
		style="margin-bottom: 0px" class="ui blue submit button" value="Update" id="updatesubmitrBtn"
		name="updatesubmitrBtn" onclick="updateComplaint();"> <input
		type="button" style="margin-bottom: 0px" class="ui red button" value="Cancel" id="updateCancelBtn"
		name="updateCancelBtn" onclick="updateCancel();"></td>
</tr>
