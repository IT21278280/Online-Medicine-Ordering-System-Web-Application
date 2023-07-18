<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Profile</title>
</head>
<body>
	<jsp:include page="inc/header.jsp"></jsp:include>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		String phone = request.getParameter("contact");
		
	%>
<div class = "container">
	<h2 class="text-center mt-5">Delete My Profile</h2><hr>

	<form action="deleteProfile" method="post">
	<table class="table table-dark mt-5" style="height:100px; width:70%; text-align: center; position: relative; left:15%; border-radius: 5px">
		<tr>
			<td>Customer ID</td>
			<td class="table-light"><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td class="table-light"><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td class="table-light"><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td class="table-light"><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" class="btn btn-danger" value="Delete My Profile" name="submit" style="position: relative; left: 45%">
	</form>
	</div>
	<jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>