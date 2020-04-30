<!DOCTYPE html>
<html>
<head>
<title>Search Employee</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/search.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/bootstrap/css/bootstrap.min.css">
</head>
<body>

	<div style="float: right;">
		<a href="${pageContext.request.contextPath}/"
			style="font-size: 1.17em;">Home</a>
	</div>
	<div id="wrapper">
		<div>
			<form:form
				action="${pageContext.request.contextPath}/search/searchEmp"
				method="post" modelAttribute="searchForm">
				<form:input path="searchCriteria" />
				<form:button class="btn btn-primary" name="search">Search</form:button>
			</form:form>
			<table class="table table-striped">
				<thead class="indigo white-text">
					<tr>
						<th>Employee Id</th>
						<th>Name</th>
						<th>Join Date</th>
						<th>Department</th>
						<th>Position</th>
						<th>Email</th>
						<th>Phone</th>
						<th>-</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.content}" var="employee"
						varStatus="status">
						<tr>
							<td>${employee.empId}</td>
							<td>${employee.empName}</td>
							<td>${employee.joinDate}</td>
							<td>${employee.departmentName}</td>
							<td>${employee.positionName}</td>
							<td>${employee.email}</td>
							<td>${employee.phone}</td>
							<td><a href="#">Upload</a> <a href="#">Edit</a> <a href="#">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="container">
				<div class="paginationPart">
					<t:pagination page="${page}" outerElementClass="pagination"
						maxDisplayCount="5" criteriaQuery="${f:query(searchForm)}" />
				</div>
				<div>
					<fmt:formatNumber value="${page.totalElements}" />
					results
				</div>
				<div>${f:h(page.number + 1) }/${f:h(page.totalPages)}Pages</div>
			</div>
		</div>
	</div>
</body>
</html>