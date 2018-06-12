<html>
<head>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/chart/chart.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// var complaintWiseCount = JSON.stringify(${complaintWiseCount});
	// var finalData=[];
	// var Header= ['Category', 'Monthly Count'];
	// finalData.push(Header);

	// for ( var key in ${complaintWiseCount}) {

	// 	var temp=[];
	// 	temp.push(${complaintWiseCount}[key][0]);
	// 	temp.push(${complaintWiseCount}[key][1]);
	// 	finalData.push(temp);
	// }

	// 	google.charts.load("current", {
	// 		packages : [ "corechart" ]
	// 	});

	// 	google.charts.setOnLoadCallback(drawChart);
	// 	function drawChart() {
	// 		var data = google.visualization.arrayToDataTable(finalData);

	// 		var options = {
	// 			title : 'Monthly Complaint Categorywise',
	// 			is3D : true,
	// 		};

	// 		var chart = new google.visualization.PieChart(document
	// 				.getElementById('piechart_3d'));
	// 		chart.draw(data, options);
	// 	}
</script>
</head>
<body>
	<form id="chartForm">
		<div class="row" style="display: none" id="complaintChart">
			<div
				class="sixteen wide mobile sixteen wide tablet sixteen wide computer column">
				<div class="ui segments">
					<div class="ui segment">
						<table class="ui celled table tablet stackable">
							<tr>
								<td>Year of complaint</td>
								<td><div>
										<select name="year" id="year"
											style="overflow: initial; border: 2px outset #000000;"
											onchange="changeMonth(this)">
											<option value="">--Year--</option>
											<c:forEach items="${lastYears}" var="lastYears">
												<option value="${lastYears}">${lastYears}</option>
											</c:forEach>
										</select>
									</div></td>
								<td>Month</td>
								<td>
									<div id="monthDiv">
										<select name="month" id="month"
											style="overflow: initial; border: 2px outset #000000;">
											<option value="">--Month--</option>
										</select>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div id="piechart_3d" style="width: 500px; height: 250px;"></div>
			</div>
		</div>
	</form>
</body>
</html>