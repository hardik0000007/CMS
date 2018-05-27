function changeView(viewPage) {
	if (viewPage != null && viewPage === 'fcrinv') {
		document.getElementById("complaintDiv").style.display = "none";
		document.getElementById("fcrinvestigationDiv").style.display = "";
		document.getElementById('updateComplaintForm').style.display = 'none';
		document.getElementById('insertComplaintForm').style.display = '';
	} else if (viewPage != null && viewPage === 'view') {
		document.getElementById("fcrinvestigationDiv").style.display = "none";
		document.getElementById("complaintDiv").style.display = ""
		document.getElementById('updateComplaintForm').style.display = 'none';
		document.getElementById('insertComplaintForm').style.display = 'none';
	}
}

function searchComplaint() {
	var compIdSearch = document.getElementById("compIdSearch").value;
	var custNumSearch = document.getElementById("custNumSearch").value;

	if (Trim(compIdSearch) === "" && Trim(custNumSearch) === "") {
		alert("Either 'Complaint ID' or 'Customer Number' must enter.");
	} else {

		if (compIdSearch.length < 6) {
			alert("'Complaint ID' lenght must be 6.");
			return false;
		}

		/*
		 * if(custNumSearch.length < 15) { alert("'Customer Number' lenght must
		 * be 15."); return false; }
		 */

		var JSONObject = {
			'complaintId' : 'Comp' + compIdSearch,
			'cusomerNumber' : custNumSearch
		};

		jsonData = JSON.stringify(JSONObject);
		document.getElementById("complaintDiv").style.display = 'none';
		document.getElementById("searchComplaintDiv").style.display = '';
		getData_sync("/searchComplaint/", 'searchComplaintDiv', jsonData, false);
	}

}

function searchCancel() {
	document.getElementById('compIdSearch').value = '';
	document.getElementById('custNumSearch').value = '';
	document.getElementById("complaintDiv").style.display = '';
	document.getElementById("searchComplaintDiv").style.display = 'none';
}

function getComplaintDetail(complaintId) {
	var JSONObject = {
		'complaintId' : complaintId
	};

	document.getElementById('complaintDiv').style.display = 'none';
	document.getElementById('fcrinvestigationDiv').style.display = '';
	document.getElementById('insertComplaintForm').style.display = 'none';
	document.getElementById('updateComplaintForm').style.display = '';

	jsonData = JSON.stringify(JSONObject);
	getData_sync("/searchComplaint/updatePage", 'updateComplaintForm',
			jsonData, false);
}
