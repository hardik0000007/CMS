function changeView(viewPage) {
	if (viewPage != null && viewPage === 'fcrinv') {
//		alert(viewPage);
		document.getElementById("complaintDiv").style.display = "none";
		document.getElementById("fcrinvestigationDiv").style.display = "";
	} else if (viewPage != null && viewPage === 'view') {
//		alert(viewPage);
		document.getElementById("fcrinvestigationDiv").style.display = "none";
		document.getElementById("complaintDiv").style.display = ""
	}
}