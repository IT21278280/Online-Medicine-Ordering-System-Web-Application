<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Log In</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/userStyle.css">
</head>
<body>
<jsp:include page="inc/header.jsp"></jsp:include>
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="containers">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/login.jpg" alt="Log In">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Log In</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="id"></label>
								<input type="hidden" name="id" id="id" />
							</div>
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="email" name="email" id="email"
									placeholder="Your Email"  required/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" required/>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<a href="viewProduct.jsp"><span class="social-label">Or login with</span></a>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li> 
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
<jsp:include page="inc/footer.jsp"></jsp:include>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/user.js"></script>
	<script>
		var status = document.getElementById("status").value;
		if(status == "Invalid_Email"){
			alert("Please enter Vaid Email");
		}
		if(status == "Invalid_Password"){
			alert("Please Enter Correct Password");
		}
	</script>
</body>
</html>