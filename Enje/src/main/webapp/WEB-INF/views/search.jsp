<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="ui segment" id="searchDiv" style="width: 100%">
	<form id="complaintForm" name="complaintForm">
		<table class="ui celled table tablet stackable">
			<tr>
				<td><label><b>Complaint ID</b></label></td>
				<td>
					<div>
						<label><b>Comp</b></label> <input type="text" name="compIdSearch"
							id="compIdSearch" maxlength="6" size="6">
					</div>
				</td>
				<td><label><b>Customer Number</b></label></td>
				<td>
					<div>
						<input type="text" name="custNumSearch" id="custNumSearch"
							maxlength="15" size=15>
					</div>
				</td>
				<td><input type="button" id="searchBtn" name="searchBtn"
					value="Search" onclick="searchComplaint()"
					style="margin-bottom: 0px" class="ui blue submit button">
					<input type="button" id="cancelBtn" name="cancelBtn"
					value="Cancel" onclick="searchCancel()"
					style="margin-bottom: 0px" class="ui grey submit button"></td>
			</tr>
		</table>
	</form>
</div>

<div class="ui segment" id="searchComplaintDiv" style="display: none"></div>
