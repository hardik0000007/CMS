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
	var form = document.getElementById("mainForm");
	var fieldvalue = form.elements["mobileno"].value;
	
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
		alert(customerNumber);
		var raisedDate = document.getElementById("raisedDate").value;
		var category = document.getElementById("category").value;
		var productnservice = document.getElementById("productnservice").value;
		var mobileno = document.getElementById("mobileno").value;
		var emailid = document.getElementById("emailid").value;
		var reason = document.getElementById("reason").value;
		var status = document.getElementById("status").value;
		
		var startDate = new Date(raisedDate);

		var JSONObject = {
				'complaint':cType,
				'startDate':startDate.toJSON(),
				'phoneNo' : mobileno,
				'email' : emailid,
				'reason' : reason,
				'cusomerNumber' : customerNumber,
				'complaint':{
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
		
		jsonData = JSON.stringify(JSONObject);
		getData_sync("/saveComplaint/", 'displayForm', jsonData, false);
		
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