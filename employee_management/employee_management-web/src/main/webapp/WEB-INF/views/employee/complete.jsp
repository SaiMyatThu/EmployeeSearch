<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<h2>Successfully Registered</h2>
	<form:form modelAttribute="employeeForm"
		action="${pageContext.request.contextPath}/employee/create">
		<form:button class="btn btn-primary" name="register"
			style="margin-left: 450px;">Finish</form:button>
	</form:form>
</body>
</html>