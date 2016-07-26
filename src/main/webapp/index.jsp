<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Shopping Cart</title>
</head>
<body>
	<div data-role="page">
		<div data-role="header" data-position="fixed">
			<h1>Welcome to shopping Cart</h1>
			<table width="100%">
				<tr>
					<c:choose>
					<c:when test="${empty loggedInUser}">
					<td align="left">Existing user <a href="login"> Login here </a></td>
					<td align="center">New user <a href="register"> Register here </a></td>
					</c:when>
					
					<c:when test="${not empty loggedInUser}">
					<td>Welcome ${loggedInUser},</td>
					<td align="right"><a href="Logout"> Logout </a></td>
					</c:when>
					</c:choose>
					</tr>
			</table>
		</div>
	</div>
	<div id="RegisterHere">
	<c:if test="${isUserClickedRegisterHere==true}">
	<%@ include file="/register.jsp" %>
	</c:if>
	</div>
	<div id="LoginHere">
	<c:if test="${isUserClickedRegisterHere==true || invalidCredentials==true}">
	<div id = "error"> ${errorMessage }</div>
	<%@ include file="/login.jsp" %>
	</c:if>
	</div>

</body>
</html>