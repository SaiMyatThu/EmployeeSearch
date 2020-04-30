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
	<h2>Confirm The Detail</h2>
	<br>
	<form:form modelAttribute="employeeForm"
		action="${pageContext.request.contextPath}/employee/insert">
		<form:hidden path="department" />
		<form:hidden path="empName" />
		<form:hidden path="joinDate" />
		<form:hidden path="datOfBirth" />
		<form:hidden path="position" />
		<form:hidden path="gender" />
		<form:hidden path="email" />
		<form:hidden path="martialStatus" />
		<form:hidden path="phone" />
		<form:hidden path="japLevel" />
		<table>
			<tr>
				<td><form:label path="empName">Employee NAME:</form:label>
					${f:h(employeeForm.empName)}</td>
				<td><form:label path="department">Department:</form:label>
					${f:h(employeeForm.department)}</td>
			</tr>

			<tr>
				<td><form:label path="datOfBirth">DOB:</form:label>
					${f:h(employeeForm.datOfBirth)}</td>
				<td><form:label path="joinDate">JOIN DATE:</form:label>
					${f:h(employeeForm.joinDate)}</td>
			</tr>

			<tr>
				<td><form:label path="gender">Gender:</form:label>
					${f:h(employeeForm.gender)}</td>
				<td><form:label path="martialStatus">Marital Status:</form:label>
					${f:h(employeeForm.martialStatus)}</td>
			</tr>

			<tr>
				<td><form:label path="phone">Phone No:</form:label>
					${f:h(employeeForm.phone)}</td>
				<td><form:label path="email">Email:</form:label>
					${f:h(employeeForm.email)}</td>
			</tr>

			<tr>
				<td><form:label path="japLevel">Japanese Level:</form:label>
					${f:h(employeeForm.japLevel)}</td>

				<td><form:label path="position">Position:</form:label>
					${f:h(employeeForm.position)}</td>

			</tr>

			<tr>
				<td><a class="btn btn-primary"
					href="${pageContext.request.contextPath}/employee/create?reCreate">Back</a>
					&nbsp;&nbsp; <input class="btn btn-primary" type="submit"
					value="Create" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>