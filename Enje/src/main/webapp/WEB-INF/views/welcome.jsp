<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<link rel="icon"
	href="${pageContext.request.contextPath}/images/icons/faviconnew.ico">
<link href="${pageContext.request.contextPath}/dist/semantic.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/mainnew.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/newicon.css"
	rel="stylesheet" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/icons/faviconnew.ico" />
<link href="${pageContext.request.contextPath}/plugins/pacejs/pace.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/datedropper/datedropper.min.css"
	rel="stylesheet" />


</head>
<body>
	<form id="mainForm">
		<div id="contextWrap">
			<div
				class="ui sidebar vertical left menu overlay  borderless visible sidemenu inverted  grey"
				style="-webkit-transition-duration: 0.1s; transition-duration: 0.1s;"
				data-color="grey">
				<a class="item logo" href="index-2.html"> <img
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="stagblogo" /><img
					src="${pageContext.request.contextPath}/images/thumblogo.png"
					alt="stagblogo" class="displaynone" />
				</a>
				<div class="ui divider"></div>
			</div>
			<div class="pusher">
				<div class="navslide navwrap">
					<div class="ui menu icon borderless grid"
						data-color="inverted white">
						<div class="right menu colhidden">

							<div class="ui dropdown item">
								<img class="ui mini circular image"
									src="${pageContext.request.contextPath}${userData.photo}"
									alt="label-image" />
								<div class="menu">
									<a class="item" href="mail.html">Inbox</a> <a class="item"
										href="profile.html">Profile</a> <a class="item"
										href="settings.html">Settings</a>
									<div class="ui divider"></div>
									<a class="item">Need Help?</a> <a class="item"
										href="login.html">Sign Out</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="mainWrap navslide profilepage">
					<div class="ui equal width left aligned padded grid stackable">
						<div
							class="sixteen wide tablet sixteen wide computer column profileheader row no-padding"
							style="height: 180px">
							<div class="column  left floated">
								<div class="ui items">
									<div class="item">
										<a class="ui small circular image"> <img
											src="${pageContext.request.contextPath}${userData.photo}"
											alt="label-image" /> <i class="circle mini red icon avt"
											data-content="Offline" data-variation="inverted redli"></i>
										</a>
										<div class="middle aligned content hiddenui">
											<div class="header">${userData.firstName}&nbsp;&nbsp;${userData.lastName}</div>
											<div class="meta">
												${userData.designation}.<br>${userData.city.cityName}.
												<br>${userData.city.state.stateName}. <br>${userData.city.state.country.countryName}.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<c:choose>
							<c:when test="${userData.userRole.role eq 'Agent'}">
								<div class="row">
									<jsp:include page="complaintData.jsp">
										<jsp:param name="complaintData" value="${complaintData}"></jsp:param>
										<jsp:param name="dataAvailabel" value="${dataAvailabel}"></jsp:param>
										<jsp:param name="complaintTypes" value="${complaintTypes}"></jsp:param>
										<jsp:param name="categoryList" value="${categoryList}"></jsp:param>
										<jsp:param name="statusList" value="${statusList}"></jsp:param>
										<jsp:param name="user" value="${user}"></jsp:param>
									</jsp:include>
								</div>
							</c:when>
							<c:when test="${userData.userRole.role eq 'Admin'}">
								<div class="row">
									<jsp:include page="admin/chart.jsp">
										<jsp:param name="user" value="${user}"></jsp:param>
										<jsp:param name="list" value="${list}"></jsp:param>
										<jsp:param name="complaintWiseCount" value="${complaintWiseCount}"></jsp:param>
									</jsp:include>
								</div>
							</c:when>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/dist/semantic.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/AjaxFunctions.js"></script>
	<script src="${pageContext.request.contextPath}/js/validations.min.js"></script>
<!-- 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script> -->
	<script
		src="${pageContext.request.contextPath}/plugins/cookie/js.cookie.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/nicescrool/jquery.nicescroll.min.js"></script>

	<script data-pace-options='{ "ajax": false }'
		src="${pageContext.request.contextPath}/plugins/pacejs/pace.js"></script>

	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/js/welcome/welcome.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datedropper/datedropper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datedropper/datedropper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/complaintData/complaintData.js"></script>

	<script>
		//some tooltip function
		$(".avt").popup({
			position : "top center"
		});
		//some tooltip function
	</script>
</body>
</html>