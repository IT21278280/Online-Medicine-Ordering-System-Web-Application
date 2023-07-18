<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update My profile</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<style type="text/css">
		table {
    		border-collapse:separate;
    		border:solid black 1px;
   			 border-radius:6px;
		}
		th, td {
  			height: 10px;
  			width: 50px;
  			border:solid black 1px;
  			
		}
		th {
	   		 border-top: none;
		}

	</style>
</head>
<body>
<jsp:include page="inc/header.jsp"></jsp:include>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		String contact = request.getParameter("contact");
	%>
	
	<div class = "container">
	<h2 class="text-center mt-5">Update Profile</h2><hr>
	
	<form action="updateProfile" method="post">
	
	<table class="table table-dark mt-5" style="height:100px; width:70%; text-align: center; position: relative; left:15%; border-radius: 5px">
		<tr>
			<td>User ID</td>
			<td class="table-light"><input type="text" name="id" value="<%=id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td class="table-light"><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td class="table-light"><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td class="table-light"><input type="password" name="password" value="<%= password %>"></td>
	</tr>
	<tr>
		<td>Confirm Password</td>
		<td class="table-light"><input type="password" name="rePassword" value="<%= rePassword %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td class="table-light"><input type="text" name="contact" value="<%= contact %>"></td>
	</tr>	
	</table>
	<br>
	<input type="submit" class="btn btn-primary" value="Update My Profile" name="update" style="position: relative; left: 45%">
	</form>
	</div>
<jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>