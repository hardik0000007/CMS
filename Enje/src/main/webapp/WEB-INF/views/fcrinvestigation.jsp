<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="ui segment" id="fcrinvestigationDiv"
	style="display: none; width: 100%">
	<div id="displayForm" style="display: block;"></div>
	<form id="complaintForm" name="complaintForm">
		<table class="ui celled table tablet stackable"
			id="insertComplaintForm">
			<tr>
				<td><label>Complaint Type</label></td>
				<td>
					<div>
						<select name="cType" id="cType"
							style="overflow: initial; border: 2px outset #000000;">
							<c:forEach items="${complaintTypes}" var="complaintTypes">
								<option value="${complaintTypes.cid}">${complaintTypes.complaintType}</option>
							</c:forEach>
						</select>
					</div>
				</td>
				<td><label>Customer Number</label></td>
				<td>
					<div>
						<input type="text" name="country" maxlength="2" size="2"
							id="country"
							style="overflow: initial; border: 2px outset #000000;"> <input
							type="text" name="branch" maxlength="4" size="4" id="branch"
							style="overflow: initial; border: 2px outset #000000;"> <input
							type="text" name="acctNum" maxlength="6" size="6" id="acctNum"
							style="overflow: initial; border: 2px outset #000000;"> <input
							type="text" name="ccd" maxlength="3" size="3" id="ccd"
							style="overflow: initial; border: 2px outset #000000;">
					</div>
				</td>
				<td><label>Date Raise</label></td>
				<td>
					<div>
						<input type="text" id="raisedDate" class="datedrop"
							placeholder="Search..."
							style="overflow: initial; border: 2px outset #000000;">
					</div>
				</td>
			</tr>
			<tr>
				<td><label>Category</label></td>
				<td>
					<div>
						<select name="category" id="category"
							style="overflow: initial; border: 2px outset #000000;"
							onchange="javascript:changeCategory(this)">
							<option value="">--Category--</option>
							<c:forEach items="${categoryList}" var="categoryList">
								<option value="${categoryList.mainCategoryId}">${categoryList.mainCategory}</option>
							</c:forEach>
						</select>
					</div>
				</td>
				<td><label>Product & Service</label></td>
				<td colspan="3">
					<div id="pronserv">
						<select name="productnservice" id="productnservice"
							style="overflow: initial; border: 2px outset #000000;">
							<option value="">--Product & Service--</option>
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td><label>Mobile number</label></td>
				<td>
					<div>
						<input type="text" name="mobileno" id="mobileno" size="10"
							maxlength="10"
							style="overflow: initial; border: 2px outset #000000;">
					</div>
				</td>
				<td><label>Email Id</label></td>
				<td colspan="3">
					<div>
						<input type="text" name="emailid" id="emailid" size="40"
							maxlength="40"
							style="overflow: initial; border: 2px outset #000000;">
					</div>
				</td>
			</tr>
			<tr>
				<td>Reason</td>
				<td colspan="5">
					<div>
						<textarea id="reason" maxlength="3000" rows="5" cols="70"
							style="align-content: left; overflow: initial; border: 2px outset #000000;">
							</textarea>
					</div>
				</td>
			</tr>
			<tr>
				<td>Status</td>
				<td colspan="3">
					<div>
						<select name="status" id="status"
							style="overflow: initial; border: 2px outset #000000;">
							<c:forEach items="${statusList}" var="statusList">
								<option value="${statusList.statusId}">${statusList.statusType}</option>
							</c:forEach>
						</select>
					</div>
				</td>
				<td><input type="reset" class="ui clear button" value="Reset"
					id="resetBtn" name="resetBtn"> <input type="button"
					class="ui blue submit button" value="Submit" id="submitrBtn"
					name="submitrBtn" onclick="submitForm();"> <input
					type="button" class="ui red button" value="Cancel" id="cancelBtn"
					name="cancelBtn"></td>
			</tr>
		</table>
		<table class="ui celled table tablet stackable"
			id="updateComplaintForm" style="display: none">
		</table>
	</form>
	<script>
		$(document).ready(function() {
			$('.datedrop').dateDropper();
		});
	</script>
</div>
