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
        var="proDetails"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/phramacy"
        user="root" password="Hansaka123@"
    />
     
    <sql:query var="pro"   dataSource="${proDetails}">
        SELECT * FROM product;
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
            <strong class="text-black"> Add Products / View Product </strong>
          </div>
        </div>
      </div>
    </div>
    <br>
    <h2 class="h3 mb-5 text-black" style="text-align:center;">Add Products</h2>
	<div class="text-center">
		<a href="addProduct.jsp"><button type="button" class="btn btn-primary btn-lg" style="postion: relative; left: 5%">Add Products</button></a>
	</div>
    <div class="site-section">
      
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-5 text-black" style="text-align:center;">View Product</h2>
          </div>
            <table class="table table-info mt-5 text-black" style="width:90%; left:5%; position: relative">
              <tr>
                <th>#</th>
                <th>Product Name</th>
                <th>Product Code</th>
                <th>Image</th>
                <th>Price</th>
                <th>Description</th>
                <th>Action</th>
              </tr>
              
              <c:forEach var="pro" items="${pro.rows}">
              
              <c:set var = "id" value="${pro.id }"/>
              <c:set var = "name" value ="${pro.name }"/>
              <c:set var = "code" value="${pro.code }"/>
              <c:set var = "image" value="${pro.image }"/>
              <c:set var = "price" value="${pro.price }"/>
              <c:set var = "description" value="${pro.description }"/>
              
              <c:url value="editProduct.jsp" var="productUpdate">
  				<c:param name = "id" value="${id }"/>
  				<c:param name = "name" value="${name }"/>
  				<c:param name = "code" value="${code }"/>
  				<c:param name = "image" value="${image }"/>
  				<c:param name = "price" value="${price }"/>
  				<c:param name = "description" value="${description}"/>
  			  </c:url>
  			  
  			  <c:url value="deleteProduct.jsp" var="deleteProduct">
  				<c:param name = "id" value="${id }"/>
  				<c:param name = "name" value="${name }"/>
  				<c:param name = "code" value="${code }"/>
  				<c:param name = "image" value="${image }"/>
  				<c:param name = "price" value="${price }"/>
  				<c:param name = "description" value="${description}"/>
  			  </c:url>
              
               <tr class="table-light">
                    <td><c:out value="${pro.id}"/></td>
                    <td><c:out value="${pro.name}"/></td>
                    <td><c:out value="${pro.code}"/></td>
                    <td><c:out value="${pro.image}"/></td>
                    <%-- <td><img src="images/<%=imgFileName%>" style="width:100px;height:100px"></td>--%>
                    <td><c:out value="${pro.price}"/></td>
                    <td><c:out value="${pro.description}"/></td>
                    <td>
                    <a href="${productUpdate}">
                  		<input type="button" class="btn btn-primary" value="Edit" name="update">
                  	</a>
                  	<a href="${deleteProduct}">
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