<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Edit | Product</title>
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

  <div class="site-wrap">
	<%@include file = "inc/header.jsp" %>
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href="index.html">Admin</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Edit Details</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-5 text-black" style="text-align:center;">Edit Product</h2>
          </div>
          <div class="col-md-12">
    
            <form action="updateCheckout" method="post">
    
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                  <div class="col-md-6">
                  	<input type="hidden" name="idcheckout" value="<%= idcheckout%>">
                    <label for="" class="text-black">First Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="FirstName" required value="<%= FirstName%>">
                  </div>
                  <div class="col-md-6">
                    <label for="" class="text-black">Last Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="LastName" required value="<%= LastName%>">
                  </div>
                </div>
       
                
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Street <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="Street" required value="<%= Street%>">
                  </div>
                </div>
                
                 <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Apartment <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="Apartment" required value="<%= Apartment%>">
                  </div>
                </div>
                
                   <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Country <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="Country" required value="<%= Country%>">
                  </div>
                </div>
                
                   <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Postal <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="Postal" required value="<%= Postal%>">
                  </div>
                </div>
                
                   <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">E-mail <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="email" required value="<%= email%>">
                  </div>
                </div>
                
                   <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Phone <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="phone" required value="<%= phone%>">
                  </div>
                </div>
    
              
                <div class="form-group row">
                  <div class="col-lg-12">
                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="Update">
                  </div>
                </div>
              </div>
            </form>
          </div>
          
        </div>
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