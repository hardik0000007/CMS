function changeCategory(obj) {
	if (obj && obj.value != '') {
		fill_data_sync("pronserv", "/productnService/" + obj.value);
	} else {
		resetProdnService();
	}
	document.getElementById('productnservice').focus();
}

function resetProdnService() {
}

function submitForm() {
	var flag = false;
	var form = document.getElementById("complaintForm");
	// var fieldvalue = form.elements["mobileno"].value;

	if (validateCombo("category", "Category")
			&& validateCombo("productnservice", "Product & Service")
			&& validate_phonno(form, "mobileno", "Mobile number", true)
			&& validate_email(form, "emailid", "Email Id", true)) {

		flag = true;
	} else {
		return false;
	}

	if (flag) {

		var cType = document.getElementById("cType").value;
		var customerNumber = document.getElementById("country").value
				+ document.getElementById("branch").value
				+ document.getElementById("acctNum").value
				+ document.getElementById("ccd").value;
		var raisedDate = document.getElementById("raisedDate").value;
		var category = document.getElementById("category").value;
		var productnservice = document.getElementById("productnservice").value;
		var mobileno = document.getElementById("mobileno").value;
		var emailid = document.getElementById("emailid").value;
		var reason = document.getElementById("reason").value;
		var status = document.getElementById("status").value;

		var startDate = new Date(raisedDate);

		var JSONObject = {
			'complaint' : cType,
			'startDate' : startDate.toJSON(),
			'phoneNo' : mobileno,
			'email' : emailid,
			'cusomerNumber' : customerNumber,
			'complaintReasons' : [ {
				'complaintReason' : reason
			} ],
			'complaint' : {
				'cid' : cType
			},
			'category' : {
				'mainCategoryId' : category
			},
			'productservice' : {
				'mainProdServiceId' : productnservice
			},
			'status' : {
				'statusId' : status
			}
		};

		{
			if (confirm('Are you sure you want to Save this Complaint?')) {
				jsonData = JSON.stringify(JSONObject);
				getData_sync("/saveComplaint/", 'displayForm', jsonData, false);
				if (document.getElementById('sucmsg').value) {
					alert("Complaint added Successfully. To see new added complaint you must loggedin again");
					document.getElementById('complaintDiv').style.display = '';
					document.getElementById('fcrinvestigationDiv').style.display = 'none';
					document.getElementById('insertComplaintForm').style.display = 'none';
					document.getElementById('updateComplaintForm').style.display = 'none';
				}
			} else {
				return false;
			}
		}

	}
}

function validateCombo(cmbId, msg) {
	if (document.getElementById(cmbId).selectedIndex === -1
			|| document.getElementById(cmbId).selectedIndex === 0) {
		valid_select_alert(msg);
		return false;
	}
	return true;
}

function updateCancel() {
	document.getElementById('complaintDiv').style.display = '';
	document.getElementById('fcrinvestigationDiv').style.display = 'none';
	document.getElementById('insertComplaintForm').style.display = 'none';
	document.getElementById('updateComplaintForm').style.display = 'none';
}

function updateComplaint() {
	if (confirm('Are you sure you want to Update this Complaint?')) {
		var uReason = document.getElementById('updatereason');

		if (trimfield(uReason.value) === '') {
			alert("Please Provide Details!");
			uReason.focus();
			return false;
		}

		var originalComplaintId = document
				.getElementById("originalComplaintId").value;
		var JSONObject = {
			'mainComplaintId' : originalComplaintId,
			'complaintReason' : uReason.value
		};

		jsonData = JSON.stringify(JSONObject);
		getData_sync("/updateReason/", 'displayForm', jsonData, false);
		if (document.getElementById('sucmsg').value) {
			alert("Complaint update Successfully.");
			updateCancel();
		}
	} else {
		return false;
	}

}

function trimfield(str) {
	return str.replace(/^\s+|\s+$/g, '');
}