<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="css/signup.css" rel="stylesheet">
<title>Help My Interview Sign Up</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
		<a class="navbar-brand " href="index.jsp" style="color:white">HelpMyInterView</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" id="navId">
				<li class="nav-item active"><a class="nav-link" href="login.jsp" style="color:white">Login <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="signup.jsp" style="color:white">SignUp</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm p-5">
    <h2 class="form-signin-heading">Registration Form</h2>

    <br>
<form action="SignUpController" method="post">
     <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">First name</label>
      <input type="text" class="form-control" id="validationDefault01" placeholder="First name" value="" name="firstName" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Last name</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="" name="lastName" required>
    </div>
    <div class=col-md-12>
    <span>Email: </span>

    <label for="inputEmail" class="sr-only">Email address</label>

    <input type="email" id="inputEmail" class="form-control"  placeholder="Email address" value="" name="emailAddress"required>

    <br>

    <span>Mobile: </span>

    <label for="inputMobile" class="sr-only">Mobile</label>

    <input type="number" id="inputMobile" class="form-control"  placeholder="Mobile" value="" name="mobileNumber" required>

    <br>

    <span>Password: </span>

    <label for="inputPassword" class="sr-only">Password</label>

    <input type="password" id="inputPassword" class="form-control"  placeholder="Password" value="" name="password" required>
    <br>
    <span>User Type: </span>

    <label for="inputPassword" class="sr-only">User Type</label>

    <input type="password" id="UserType" class="form-control" placeholder="User Type"  value="" name="userType"required></input>
    <br>
   </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit" value="submit" >Sign Up</button>
  	</div>
  	</form>
	</div>
		</div>
		</div>
</body>
</html>