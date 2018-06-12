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
		fill_data_sync("monthDiv", "/chart/" + year + "/" + obj.value);
	}
}