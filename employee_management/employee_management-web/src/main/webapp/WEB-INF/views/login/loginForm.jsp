<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div id="wrapper" style="display: block;">
		<h3>Login with Username and Password</h3>
		<c:if test="${param.containsKey('error')}">
			<t:messagesPanel messagesType="error"
				messagesAttributeName="SPRING_SECURITY_LAST_EXCEPTION" />
		</c:if>
		<div class="loginForm">
			<form:form action="${pageContext.request.contextPath}/login">
				<table>
					<tr>
						<td><label for="username">User:</label></td>
						<td><input type="text" id="username" name="username"
							value="demo">(demo)</td>
					</tr>
					<tr>
						<td><label for="password">Password:</label></td>
						<td><input type="password" id="password" name="password"
							value="demo" />(demo)</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input class="btn btn-primary" name="submit"
							type="submit" value="Login" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>
