<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/bootstrap/css/bootstrap.min.css">
</head>
<body>

	<div style="float: right;">
		<h3>
			<a href="${pageContext.request.contextPath}/">Home</a>
		</h3>
	</div>
	<br>
	<br>
	<br>
	<div id="wrapper">
		<a class="btn btn-primary btn-lg" style="margin-left: 250px;"
			href="${pageContext.request.contextPath}/employee/create">Register</a>
		<a class="btn btn-primary btn-lg" style="margin-left: 250px;"
			href="${pageContext.request.contextPath}/search/init">Search</a>
	</div>
</body>
</html>