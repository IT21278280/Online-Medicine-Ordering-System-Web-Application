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
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String code = request.getParameter("code");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
	%>

  <div class="site-wrap">
	<%@include file = "inc/header.jsp" %>
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href="index.html">Admin</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Edit Product</strong>
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
    
            <form action="update" method="post">
    
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                  <div class="col-md-6">
                  	<input type="hidden" name="id" value="<%= id%>">
                    <label for="" class="text-black">Product Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="name" required value="<%= name%>">
                  </div>
                  <div class="col-md-6">
                    <label for="" class="text-black">Product Code <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="code" required value="<%= code%>">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Image <span class="text-danger">*</span></label>
                    <input type="file" class="form-control" name="image" required value="<%= image%>">
                    <i>file .jpg .png only.</i>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Price <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="price" required value="<%= price%>">
                  </div>
                </div>
    
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="" class="text-black">Description </label>
                    <textarea name="description" cols="30" rows="7" class="form-control" style="resize:none"></textarea>
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