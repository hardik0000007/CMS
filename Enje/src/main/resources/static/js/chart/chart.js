var finalData = [];
var Header = [ 'Category', 'Monthly Count' ];
finalData.push(Header);

function changeMonth(obj) {
	if (obj && obj.value != '') {
		fill_data_sync("monthDiv", "/year/" + obj.value);
	} else {
		document.getElementById("month").innerHTML = '<option value="">--Month--</option>';
	}
	document.getElementById('month').focus();
}

function selectMonthChart(obj) {

	var year = document.getElementById('year').value;
	if (obj && obj.value != '') {
		fill_data_sync("piechart_3d", "/chart/" + year + "/" + obj.value);

	}
}

var fullFinalData = [];

function anotherCall() {
	var complaintWiseCount = document.getElementById('complaintWiseCount').value;
	callDrawChart(complaintWiseCount);
}

function callDrawChart(newComplaintWiseCount) {

	var complaintWiseCount = "";
	if (newComplaintWiseCount !== null) {
		complaintWiseCount = JSON.parse(newComplaintWiseCount);
	}
	for ( var key in complaintWiseCount) {

		var temp = [];
		temp.push(complaintWiseCount[key][0]);
		temp.push(complaintWiseCount[key][1]);
		finalData.push(temp);
	}

	if (complaintWiseCount === '' || complaintWiseCount === null || newComplaintWiseCount === '[]') {
		fullFinalData = [];
	} else {
		fullFinalData = finalData;
	}

	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
}

function drawChart() {
	var data = google.visualization.arrayToDataTable(fullFinalData);

	var options = {
		title : 'Monthly Complaint Categorywise',
		is3D : true,
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('complaintPiechart'));
	chart.draw(data, options);
}
