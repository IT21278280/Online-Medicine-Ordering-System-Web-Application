<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html lang="en">

<head>
  <title>View | Product</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">

</head>

<body>

 <sql:setDataSource
        var="Details"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/pharmacy"
        user="root" 
        password="Password@1234"
    />
     
    <sql:query var="pro"   dataSource="${Details}">
        SELECT * FROM checkout;
    </sql:query>
    

    
    <%
   		 String imgFileName=(String)request.getAttribute("image");
    	 String id = (String)request.getAttribute("id");
    
	%>

  <div class="site-wrap">
	<%@include file = "inc/header.jsp" %>
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href="index.html">Admin</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">View Product</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-5 text-black" style="text-align:center;">View Details</h2>
          </div>
          
          <table class="table serach-id" >
          <tr>
            <th><input type="text" name="idtxtsearch" id="id_search" placeholder="Enter ID"/></th>
            <th><input type="button" name="idbtnsearch" value="SEARCH"></th>
          </tr>
          </table>
          
          
          
            <table class="table table-info mt-5 text-black" style="width:90%; left:5%; position: relative">
              <tr>
                <th>No</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Street</th>
                <th>Apartment</th>
                <th>Country</th>
                <th>Postal</th>
                <th>E-mail</th>
                <th>Phone</th>
              </tr>
              
              <c:forEach var="pro" items="${pro.rows}">
              
              <c:set var = "idcheckout" value="${pro.idcheckout }"/>
              <c:set var = "FirstName" value ="${pro.FirstName }"/>
              <c:set var = "LastName" value ="${pro.LastName }"/>
              <c:set var = "Street" value ="${pro.Street }"/>
              <c:set var = "Apartment" value ="${pro.Apartment }"/>
              <c:set var = "Country" value="${pro.Country }"/>
              <c:set var = "Postal" value="${pro.Postal }"/>
              <c:set var = "email" value="${pro.email }"/>
              <c:set var = "phone" value="${pro.phone }"/>
              
              <c:url value="editCheckout.jsp" var="updateCheckout">
  				<c:param name = "idcheckout" value="${idcheckout }"/>
  				<c:param name = "FirstName" value="${FirstName }"/>
  				<c:param name = "LastName" value="${LastName }"/>
  				<c:param name = "Street" value="${Street }"/>
  				<c:param name = "Apartment" value="${Apartment }"/>
  				<c:param name = "Country" value="${Country}"/>
  				<c:param name = "Postal" value="${Postal}"/>
  				<c:param name = "email" value="${email}"/>
  				<c:param name = "phone" value="${phone}"/>
  			  </c:url>
  			  
  			  <c:url value="deleteCheckout.jsp" var="deleteCheckout">
  				<c:param name = "idcheckout" value="${idcheckout }"/>
  				<c:param name = "FirstName" value="${FirstName }"/>
  				<c:param name = "LastName" value="${LastName }"/>
  				<c:param name = "Street" value="${Street }"/>
  				<c:param name = "Apartment" value="${Apartment }"/>
  				<c:param name = "Country" value="${Country}"/>
  				<c:param name = "Postal" value="${Postal}"/>
  				<c:param name = "email" value="${email}"/>
  				<c:param name = "phone" value="${phone}"/>
  			  </c:url>
              
               <tr class="table-light">
                    <td><c:out value="${pro.idcheckout}"/></td>
                    <td><c:out value="${pro.FirstName}"/></td>
                    <td><c:out value="${pro.LastName}"/></td>
                    <td><c:out value="${pro.Street}"/></td>
                    <td><c:out value="${pro.Apartment}"/></td>
                    <td><c:out value="${pro.Country}"/></td>
                    <td><c:out value="${pro.Postal}"/></td>
                    <td><c:out value="${pro.email}"/></td>
                    <td><c:out value="${pro.phone}"/></td>
                    <td>
                    <a href="${updateCheckout}">
                  		<input type="button" class="btn btn-primary" value="Edit" name="update">
                  	</a>
                  	<a href="${deleteCheckout}">
                 		<input type="button" class="btn btn-danger" value="Delete" name="delete">
                	</a>
                	</td>
                </tr>
                
            </c:forEach>
            </table>
      </div>
    </div>
    
    

    <footer class="site-footer">
    	<%@include file = "inc/footer.jsp" %>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>

</body>

</html>