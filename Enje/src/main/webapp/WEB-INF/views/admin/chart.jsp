<html>
<head>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	
var complaintWiseCount = JSON.stringify(${complaintWiseCount});
var finalData=[];
var Header= ['Category', 'Monthly Count'];
finalData.push(Header);

for ( var key in ${complaintWiseCount}) {
	
	var temp=[];
	temp.push(${complaintWiseCount}[key][0]);
	temp.push(${complaintWiseCount}[key][1]);
	finalData.push(temp);
}

	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable(finalData);

		var options = {
			title : 'My Daily Activities',
			is3D : true,
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart_3d'));
		chart.draw(data, options);
	}
	 

</script>
</head>
<body>
	<div id="piechart_3d" style="width: 900px; height: 500px;"></div>
</body>
</html>