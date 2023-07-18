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

	<%
	String idcheckout = request.getParameter("idcheckout");
	String FirstName = request.getParameter("FirstName");
	String LastName = request.getParameter("LastName");
	String Street = request.getParameter("Street");
	String Apartment = request.getParameter("Apartment");
	String Country = request.getParameter("Country");
	String Postal = request.getParameter("Postal");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	%>
	
	<div class = "container">
	<h2 class="text-center mt-5">Update Details</h2><hr>
	
	<form action="updateCheckout" method="post">
	
	<table class="table table-dark mt-5" style="height:100px; width:70%; text-align: center; position: relative; left:15%; border-radius: 5px">
		
		<tr>
			<td>First Name</td>
			<td class="table-light"><input type="text" name="FirstName" value="<%= FirstName %>"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td class="table-light"><input type="text" name="LastName" value="<%= LastName %>"></td>
		</tr>
		<tr>
			<td>Street</td>
			<td class="table-light"><input type="text" name="Street" value="<%= Street %>"></td>
		</tr>
		<tr>
			<td>Apartment</td>
			<td class="table-light"><input type="text" name="Apartment" value="<%= Apartment %>"></td>
		</tr>
			<tr>
			<td>Country</td>
			<td class="table-light"><input type="text" name="Country" value="<%= Country %>"></td>
		</tr>
			<tr>
			<td>Postal</td>
			<td class="table-light"><input type="text" name="Postal" value="<%= Postal %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td class="table-light"><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	
	<tr>
		<td>Phone number</td>
		<td class="table-light"><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>	
	</table>
	<br>
	<input type="submit" name="update" value="Update My Profile" >
	</form>
	</div>

</body>
</html>