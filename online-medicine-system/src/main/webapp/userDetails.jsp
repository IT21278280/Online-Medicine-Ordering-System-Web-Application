<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
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
	<div class = "container">
	<h2 class="text-center mt-5">My Profile</h2><hr>
	<table class="table table-dark mt-5" style="height:100px; width:70%; text-align: center; position: relative; left:15%; border-radius: 5px">
	<c:forEach var="user" items="${userDetail}">
	
	<c:set var="id" value="${user.id}"/>
	<c:set var="name" value="${user.name}"/>
	<c:set var="email" value="${user.email}"/>
	<c:set var="password" value="${user.password}"/>
	<c:set var="rePassword" value="${user.rePassword}"/>
	<c:set var="contact" value="${user.phone}"/>

	
		<tr>
			<th class="ms-2">ID</th>
			<td class="table-light">${user.id }</td>
		</tr>
		<tr>
			<th>Name</th>
			<td class="table-light">${user.name }</td> <%--internally call customer.java getname function--%>
		</tr>
		<tr>
			<th>Email</th>
			<td class="table-light">${user.email }</td>
		</tr>
		<tr>
			<th>Password</th>
			<td class="table-light">**************</td>
		</tr>
		<tr>
			<th>Contact</th>
			<td class="table-light">${user.phone }</td>
		</tr>
		</c:forEach>
			<c:url value="updateUser.jsp" var="userUpdate">
				<c:param name="id" value="${id}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="password" value="${password}"/>
				<c:param name="rePassword" value="${rePassword}"/>
				<c:param name="contact" value="${contact}"/>
			</c:url>
			<c:url value="deleteUser.jsp" var="userDelete">
				<c:param name="id" value="${id}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="password" value="${password}"/>
				<c:param name="rePassword" value="${rePassword}"/>
				<c:param name="contact" value="${contact}"/>
			</c:url>
	</table>	
  </div>
  <div class="container mt-5" style="position: relative; left: 35%">
  
  
	
  <a href="${userUpdate}">
  	<input type="submit" class="btn btn-primary" value="Edit" name="update"> &nbsp;&nbsp;
  </a>
  <a href="${userDelete}">
  	<input type="submit" class="btn btn-danger" value="Delete">
  </a>
  	
  </div>
  <jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>