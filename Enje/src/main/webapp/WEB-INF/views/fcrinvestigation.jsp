<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
${complaintTypesForm} -- hi
<form class="ui form segment form1">
	<div class="two fields">
		<div class="field">
			<label>Complaint Type</label>
			<div class="ui dropdown selection" tabindex="0">
				<select name="cType">
					<option value="" selected="selected">Complaint Type</option>
					<c:forEach items="${complaintTypesForm}" var="complaintTypesForm">
						<option value="${complaintTypesForm.cid}">${complaintTypesForm.complaintType}</option>
					</c:forEach>
				</select>
				<!-- 				<i class="dropdown icon"></i> -->
				<!-- 				<div class="default text">Gender</div> -->
				<!-- 				<div class="menu" tabindex="-1"> -->
				<!-- 					<div class="item" data-value="male">Male</div> -->
				<!-- 					<div class="item" data-value="female">Female</div> -->
				<!-- 				</div> -->
			</div>
		</div>
	</div>
</form>