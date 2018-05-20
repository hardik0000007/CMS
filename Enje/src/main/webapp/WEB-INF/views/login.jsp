<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login V6</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<%--  <link rel="stylesheet" type="text/css" href="daterangepicker/daterangepicker.css"> --%>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<form:form name="loginForm" method="post" modelAttribute="user" action="${pageContext.request.contextPath}/loginProcess">
		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100 p-t-85 p-b-20">
					<form class="login100-form validate-form">
						<span class="login100-form-title p-b-70"> Welcome </span> <span
							class="login100-form-avatar"> <img src="${pageContext.request.contextPath}/images/ladu.jpg"
							alt="AVATAR">
						</span>

						<div class="wrap-input100 validate-input m-t-85 m-b-35"
							data-validate="Enter username">
							<input class="input100" type="text" name="username" id="username">
							<span class="focus-input100" data-placeholder="Username"></span>
						</div>

						<div class="wrap-input100 validate-input m-b-50"
							data-validate="Enter password">
							<input class="input100" type="password" name="password"
								id="password"> <span class="focus-input100"
								data-placeholder="Password"></span>
						</div>
						<div class="container-login100-form-btn">
							<button name="loginButton" class="login100-form-btn"
								>Login</button>
						</div>
					</form>
					<div id="error" style="display: block;" align="center">"${loginMsg}"</div>
				</div>
			</div>
		</div>
	</form:form>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/js/login/login.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/AjaxFunctions.js"></script>

</body>
</html>