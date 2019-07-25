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
<link href="css/login.css" rel="stylesheet">
<title>Help My Interview Login</title>
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
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="login.jsp" style="color:white">Login <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="signup.jsp" style="color:white">SignUp</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
	<div class="row">
	<div class="col-md-12"> <h2 class="form-signin-heading">Login Here</h2>

    <br></div>
	</div>
	<div class="row">
		<div class="col-md-6 ">
		<h4> ${msg}</h4>
		</div>
	</div>
		<div class="row">
		<div class="col-md-4">
		</div>
			<div class="col-md-4">
<form action="LoginController" method="post">
  <div class="form-group">
    <label for="uname">Email Address:</label>
    <input type="email" class="form-control" id="uname" placeholder="Enter Email" value="" name="emailAddress" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" placeholder="Enter password" value="" name="password" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <button type="submit" class="btn btn-primary">Log In</button>
</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</body>
</html>