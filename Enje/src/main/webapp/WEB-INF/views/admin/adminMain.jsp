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

			<div class="ui segment" id="complaintDiv">
				<table class="ui celled table tablet stackable">
					<tr>
						<td>${user}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
