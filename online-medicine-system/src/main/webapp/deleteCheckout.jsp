<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Delete</title>
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
    	<%@include file = "inc/header.jsp" %>
    	
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.html">Admin</a> <span class="mx-2 mb-0">/</span> <strong
              class="text-black">Delete Page</strong></div>
        </div>
      </div>
    </div>
    
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
	    
    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <span class="icon-check_circle display-1 text-danger"></span>
            <h2 class="display-5 text-black">Are you want to delete ?</h2>
          </div>
        </div>
      </div>
    </div>
    
    <form action="deleteCheckout" method="post">
    
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                  <div class="col-md-6">
                  <input type="hidden" class="form-control" name="idcheckout" value="<%= idcheckout %>" readonly>
                    <label for="" class="text-black">First Name</label>
                    <input type="text" class="form-control" name="FirstName" value="<%= FirstName %>" readonly>
                    <label for="" class="text-black">Last Name</label>
                    <input type="text" class="form-control" name="LastName" value="<%= LastName %>" readonly>
                  </div>
                  <div class="col-md-6">
                    <label for="" class="text-black">Street</label>
                    <input type="text" class="form-control" name="Street" value="<%= Street %>" readonly>
                    <label for="" class="text-black">Apartment</label>
                    <input type="text" class="form-control" name="Apartment" value="<%= Apartment %>" readonly>
                    <label for="" class="text-black">Country</label>
                    <input type="text" class="form-control" name="Country" value="<%= Country %>" readonly>
                    <label for="" class="text-black">Postal</label>
                    <input type="text" class="form-control" name="Postal" value="<%= Postal %>" readonly>
                  </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">E-mail</label>
                    <input type="text" class="form-control" name="email" value="<%= email %>" readonly>
                    <label for="" class="text-black">Phone</label>
                    <input type="text" class="form-control" name="phone" value="<%= phone %>" readonly>
                  </div>
                </div>
    
                
                <div class="form-group row">
                  <div class="col-lg-12">
                    <p>
                  		<input type="submit" class="btn btn-md height-auto px-4 py-3 btn-danger" name="submit" value="Delete Details">
                  	</p>
                  </div>
                </div>
              </div>
            </form>


    <footer class="site-footer">
      <%@include file = "inc/footer.jsp" %>
    </footer>


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