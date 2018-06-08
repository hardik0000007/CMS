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
	
	var frmObj = document.getElementById('mainForm');
	var compIdSearch = document.getElementById("compIdSearch").value;
	var custNumSearch = document.getElementById("custNumSearch").value;

	if (Trim(compIdSearch) === "" && Trim(custNumSearch) === "") {
		alert("Either 'Complaint ID' or 'Customer Number' must enter.");
		return false;
	} else {

		if (Trim(compIdSearch) !== '' && Trim(custNumSearch) !== "") {
			alert("Please enter either 'Complaint ID' or 'Customer Number' not both.");
			return false;
		}

		if (Trim(compIdSearch) !== '' && compIdSearch.length === 6) {
			
			if (!validate_only_number(frmObj, "compIdSearch", "Complaint ID", false))
		    {
		        document.getElementById('compIdSearch').value = "";
		        document.getElementById('compIdSearch').focus();
		        return false;
		    }
		}
		else{
			alert("'Complaint ID' lenght must be 6.");
			return false;
		}

		  if(Trim(custNumSearch) !== '' && custNumSearch.length < 15) 
		  { 
			  alert("'Customer Number' lenght must be 15."); 
			  return false; 
		   }

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
