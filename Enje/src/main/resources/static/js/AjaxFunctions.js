//Function that set URL for multiselect. and using that URL it call AJAX funtion to fill combo

var getServerUrl = getServerNameRealty();
function getServerNameRealty() {
	return url = getFinLibPathRealty() + "resource/";
}
function getFinLibPathRealty() {
	var url = "";
	var host = window.location.hostname;
	if (host.search("dev") > -1 || host.search("localhost") > -1
			|| host.search("192.168") > -1) {
		url = "https://dev.njindiaonline.in/finlibrary/";
	} else if (host.search("test") > -1) {
		url = "https://test.njindiaonline.in/includes/finlibrary/";
	} else {
		url = "https://www.njindiaonline.in/includes/finlibrary/";
	}
	return url;
}

var varLoading = '<div style="clear:both;margin:5px auto;border:1px solid #ccc;padding:5px;width:65px; background:#fff" align="center">\n\
                    <img src="images/loading.gif" alt="Loading" title="Loading">\n\
                    <br>\n\
                    <center><span style="color:darkblue"><b>Loading...</b></span><center>\n\
                </div>';

var varProblem = '<div style="width:100%;float:left" align="center"><center><font style="color:darkred;text-align:center;width:100%"><b>Some problem arise.</b></font><center></div>';

function clearDiv(divId) {
	document.getElementById(divId).innerHTML = "";
}
function setUrl(combo, divID) {
	len = combo.options.length;

	var url = "Fill_Employee_Combo.jsp?";

	for (var i = 0; i < len; i++) {
		if (combo.options[i].selected)
			url += "pscID=" + combo.options[i].value + "&";
	}
	// url=url.substring(0,url.length-1);

	url = url + "isMulti=YES";

	// alert(url);
	getData(url, divID);

}

// Following function will get the result from server and return it as string
// formate.
function getDataValid(dataSource, param) // Added by : Dipal
{
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		XMLHttpRequestObject.open("POST", dataSource, false);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XMLHttpRequestObject.send(param);

		if (XMLHttpRequestObject.readyState == 4)// &&
													// XMLHttpRequestObject.status
													// == 200)
		{
			var t = XMLHttpRequestObject.responseText;
			// alert(t);
			// obj.innerHTML=XMLHttpRequestObject.responseText;
			return Trim(t);
		}
	}
}

function getData_sync(dataSource, divID, param, flag) {
	if (flag != true)
		flag = false;
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		var obj = document.getElementById(divID);
		// obj.innerHTML ='<img src="./images/load_page.gif" ><br><div
		// align=center><font class=\'h4_blue\'><b>Loading Page...
		// </b></font></div>';
		obj.innerHTML = varLoading;
		XMLHttpRequestObject.open("POST", dataSource, flag);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/json;charset=UTF-8');
		XMLHttpRequestObject.send(param);
		if (XMLHttpRequestObject.readyState == 4
				&& XMLHttpRequestObject.status == 200) {
			obj.innerHTML = XMLHttpRequestObject.responseText;
		}
	}
}

function getData2(dataSource, divID, param) {
	// alert(param);
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		var obj = document.getElementById(divID);

		// obj.innerHTML = '<img src="../images/load_page.gif"
		// id="imageid"><br><div align=center><font color=#20759c><b>Please
		// wait...</b></font></div>';
		obj.innerHTML = varLoading;

		XMLHttpRequestObject.open("POST", dataSource, false);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XMLHttpRequestObject.send(param);
		if (XMLHttpRequestObject.readyState == 4)// &&
													// XMLHttpRequestObject.status
													// == 200)
		{
			// alert(obj.name)
			// alert(XMLHttpRequestObject.responseText);
			obj.innerHTML = XMLHttpRequestObject.responseText;
		}
	}
	return 1;
}

function getData1(dataSource, divID, param, formname) {
	// alert("Location: "+dataSource+" "+param);

	param = param + "&" + getalldata(formname);
	// alert(param);
	dataSource = dataSource + param;
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		var obj = document.getElementById(divID);

		// obj.innerHTML = '<img src="./images/load_page.gif"
		// id="imageid"><br><div align=center><font color=#20759c><b>Please
		// wait...</b></font></div>';
		obj.innerHTML = varLoading;
		XMLHttpRequestObject.open("POST", dataSource, false);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XMLHttpRequestObject.send(param);
		if (XMLHttpRequestObject.readyState == 4)// &&
													// XMLHttpRequestObject.status
													// == 200)
		{
			// alert(obj.name)
			// alert(XMLHttpRequestObject.responseText);
			obj.innerHTML = XMLHttpRequestObject.responseText;
		}

	}
	return 1;
}

function getData(dataSource, divID) {

	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		var obj = document.getElementById(divID);
		XMLHttpRequestObject.open("POST", dataSource);
		XMLHttpRequestObject.onreadystatechange = function() {
			if (XMLHttpRequestObject.readyState == 4
					&& XMLHttpRequestObject.status == 200) {
				obj.innerHTML = XMLHttpRequestObject.responseText;
			}
		}

		XMLHttpRequestObject.send(null);

	}
}

function getData(url) {
	var xmlHttp = getObject();
	xmlHttp.open("get", url, false);
	xmlHttp.send(null);

	if (xmlHttp.readyState == 4) {
		return xmlHttp.responseText;
	}
}

function getData(dataSource, divID, param) {

	// alert("caled"+dataSource);
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	// alert('object'+XMLHttpRequestObject);
	if (XMLHttpRequestObject) {
		var obj = document.getElementById(divID);
		// obj.innerHTML = '<img src="./images/load_page.gif" ><br><div
		// align=center><font class=\'h4_blue\'><b>Loading Page...
		// </b></font></div>';
		obj.innerHTML = varLoading;
		XMLHttpRequestObject.open("POST", dataSource);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XMLHttpRequestObject.onreadystatechange = function() {
			if (XMLHttpRequestObject.readyState == 4
					&& XMLHttpRequestObject.status == 200) {
				// alert("caled"+param);
				obj.innerHTML = XMLHttpRequestObject.responseText;

			}
		}

		XMLHttpRequestObject.send(param);
	}
}

function getRequestBody(oForm) {
	var aParams = new Array();
	var sParam = '';
	for (var i = 0; i < oForm.elements.length; i++) {
		if (oForm.elements[i].options) { // dropdwn

			for (var j = 0; j < oForm.elements[i].options.length; j++) {
				if (oForm.elements[i].options[j].selected) {
					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i][j].value);
					aParams.push(sParam);
				}

			}
		} else {
			if (oForm.elements[i].type == "checkbox") {
				if (oForm.elements[i].checked == true) {
					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i].value);
					aParams.push(sParam);
				}
			} else if (oForm.elements[i].type == "radio"
					|| oForm.elements[i].type == "RADIO") {
				if (oForm.elements[i].checked == true) {

					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i].value);
					aParams.push(sParam);
				}
			} else {
				sParam = encodeURIComponent(oForm.elements[i].name);
				sParam += "=";
				sParam += encodeURIComponent(oForm.elements[i].value);
				aParams.push(sParam);
			}
		}
	}
	return aParams.join("&");
}

function getRequestBodyWithoutFile(oForm) {
	var aParams = new Array();
	var sParam = '';
	for (var i = 0; i < oForm.elements.length; i++) {
		if (oForm.elements[i].options) {
			for (var j = 0; j < oForm.elements[i].options.length; j++) {
				if (oForm.elements[i].options[j].selected) {
					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i][j].value);
					aParams.push(sParam);
				}
			}
		} else {
			if (oForm.elements[i].type === "checkbox") {
				if (oForm.elements[i].checked == true) {
					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i].value);
					aParams.push(sParam);
				}
			} else if (oForm.elements[i].type === "radio"
					|| oForm.elements[i].type === "RADIO") {
				if (oForm.elements[i].checked == true) {

					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i].value);
					aParams.push(sParam);
				}
			} else if (oForm.elements[i].type !== "file"
					&& oForm.elements[i].type !== "FILE") {
				sParam = encodeURIComponent(oForm.elements[i].name);
				sParam += "=";
				sParam += encodeURIComponent(oForm.elements[i].value);
				aParams.push(sParam);
			}
		}
	}
	return aParams.join("&");
}

function getalldata(oForm) {
	var aParams = new Array();
	var sParam = '';
	alert("here");
	// aParams.push(sParam);
	for (var i = 0; i < oForm.elements.length; i++) {
		if (oForm.elements[i].tagName == "SELECT") {
			/*
			 * var sel = oForm.elements[i]; sParam =
			 * encodeURIComponent(sel.name) + "=" +
			 * encodeURIComponent(sel.options[sel.selectedIndex].value) + "&";
			 */// aParams.push(sParam);
			for (var j = 0; j < oForm.elements[i].options.length; j++) {
				if (oForm.elements[i].options[j].selected) {
					sParam = encodeURIComponent(oForm.elements[i].name);
					sParam += "=";
					sParam += encodeURIComponent(oForm.elements[i][j].value);
					aParams.push(sParam);
				}
			}

		}

		if (oForm.elements[i].type == "checkbox"
				&& oForm.elements[i].checked == true) {
			sParam = encodeURIComponent(oForm.elements[i].name);
			sParam += "=";
			sParam += encodeURIComponent(oForm.elements[i].value);

			aParams.push(sParam);
		}

		if (oForm.elements[i].type == "radio"
				&& oForm.elements[i].checked == true) {
			sParam = encodeURIComponent(oForm.elements[i].name);

			sParam += "=";
			sParam += encodeURIComponent(oForm.elements[i].value);
			aParams.push(sParam);
		}

		if (oForm.elements[i].tagName == "INPUT"
				&& oForm.elements[i].type == "text") {
			sParam = encodeURIComponent(oForm.elements[i].name);
			sParam += "=";
			sParam += encodeURIComponent(oForm.elements[i].value);
			aParams.push(sParam);
		}
		if (oForm.elements[i].tagName == "INPUT"
				&& oForm.elements[i].type == "hidden") {
			sParam = encodeURIComponent(oForm.elements[i].name);
			sParam += "=";
			sParam += encodeURIComponent(oForm.elements[i].value);
			aParams.push(sParam);
		}
		if (oForm.elements[i].tagName == "INPUT"
				&& oForm.elements[i].type == "file") {
			sParam = encodeURIComponent(oForm.elements[i].name);
			sParam += "=";
			sParam += encodeURIComponent(oForm.elements[i].value);
			aParams.push(sParam);
		}
		if (oForm.elements[i].type == "textarea") {

			sParam = encodeURIComponent(oForm.elements[i].name);
			sParam += "=";
			sParam += encodeURIComponent(oForm.elements[i].value);
			aParams.push(sParam);
		}
		// alert("hello"+sParam);
	}

	return aParams.join("&");
}
function getDataValid(dataSource, param) {
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		XMLHttpRequestObject.open("POST", dataSource, false);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XMLHttpRequestObject.send(param);

		if (XMLHttpRequestObject.readyState == 4)// &&
													// XMLHttpRequestObject.status
													// == 200)
		{
			var t = XMLHttpRequestObject.responseText;
			// alert(t);
			// obj.innerHTML=XMLHttpRequestObject.responseText;
			return Trim(t);
		}
	}
}
function fill_data_sync(divID, dataSource) {

	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (XMLHttpRequestObject) {
		var obj = document.getElementById(divID);

		//obj.innerHTML = '<center><div><img src="images/nj_loader.gif"  width="40" height="40"><br><font color=darkblue><b>Loading Page... </b></font></div></center>';
		XMLHttpRequestObject.open("POST", dataSource, false);
		XMLHttpRequestObject.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XMLHttpRequestObject.send('');

		if (XMLHttpRequestObject.readyState === 4 || XMLHttpRequestObject.readyState === 200) {
			obj.innerHTML = XMLHttpRequestObject.responseText;

		}

	}
}