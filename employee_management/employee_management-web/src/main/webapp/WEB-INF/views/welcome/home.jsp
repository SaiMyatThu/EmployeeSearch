<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/bootstrap/css/bootstrap.min.css">
</head>

<sec:authentication property="principal.account" var="account" />

<body>
	<h2>Employee</h2>
	<br>
	<div id="wrapper">
		<div style="float: right;">
			<form:form action="${pageContext.request.contextPath}/logout">
				<button type="submit">Logout</button>
			</form:form>
		</div>
	</div>
	<br>
	<br>
	<br>

	<a class="btn btn-primary" id="empManagement"
		href="${pageContext.request.contextPath}/account">Employee <br>
		Management
	</a>
</body>
</html>