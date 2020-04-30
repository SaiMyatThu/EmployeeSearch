<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/register.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/jquery-ui-1.12.1/jquery-ui.structure.min.css">
<script
	src="${pageContext.request.contextPath}/resources/app/jquery-3.5.0.min.js}"></script>
<script
	src="${pageContext.request.contextPath}/resources/app/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/app/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script>
	$(function() {
		$(".datePicker").datepicker();
	});
</script>
</head>

<body>
	<div style="float: left;">
		<h2>New Employee</h2>
	</div>

	<div style="float: right;">
		<a href="${pageContext.request.contextPath}/"
			style="font-size: 1.17em;">Home</a> &nbsp; <a
			href="${pageContext.request.contextPath}/account"
			style="font-size: 1.17em;">Search</a>
	</div>
	<c:if test="${error != null}">
		<div class="alert alert-danger" role="alert">Please Fill Correctly!</div>
	</c:if>
	<form:form modelAttribute="employeeForm" method="post"
		action="${pageContext.request.contextPath}/employee/confirm">
		<table>
			<tr>
				<td><form:label path="empName">Employee Name:</form:label> <form:input
						path="empName" /></td>
				<td><form:label path="department">Department:</form:label> <form:select
						path="department">
						<form:option value="" label="--Select--" />
						<form:options items="${CL_DEPARTMENT}" />
					</form:select></td>
			</tr>

			<tr>
				<td><form:label path="datOfBirth">Date Of Birth:</form:label> <form:input
						class="datePicker" path="datOfBirth" /></td>
				<td><form:label path="joinDate">JOIN DATE:</form:label> <form:input
						class="datePicker" path="joinDate" /></td>
			</tr>
			<tr>
				<td><form:label path="gender">Gender:</form:label> <form:radiobutton
						path="gender" value="Male" /> Male <form:radiobutton
						path="gender" value="Female" /> Female</td>
				<td><form:label path="martialStatus">Marital Status:</form:label>
					<form:radiobutton path="martialStatus" value="Single" /> Single <form:radiobutton
						path="martialStatus" value="Married" /> Married</td>
			</tr>

			<tr>
				<td><form:label path="email">Email:</form:label> <form:input
						path="email" /></td>
				<td><form:label path="phone">Phone No:</form:label> <form:input
						path="phone" /></td>
			</tr>

			<tr>
				<td><form:label path="japLevel">Japanese Level:</form:label> <form:select
						path="japLevel">
						<form:option value="" label="--Select--" />
						<form:options items="${CL_JAPANESESKILL}" />
					</form:select></td>
				<td><form:label path="position">Position:</form:label> <form:select
						path="position">
						<form:option value="" label="--Select--" />
						<form:options items="${CL_POSITION}" />
					</form:select></td>
			</tr>
			<tr>
				<td><form:button class="btn btn-primary" name="register">Register</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>