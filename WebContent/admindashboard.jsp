<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help My Interview Admin Dashboard</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="css/admin.css" rel="stylesheet">
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
		<a class="navbar-brand "  href="index.jsp" style="color:white">HelpMyInterView</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" id="navId">
				<li class="nav-item active bg-danger"><a class="nav-link" href="index.jsp" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
	<div class=row>
		<div class="col-sm-12" >
		<h2 id="heading" style="color: #39CCCC"> WelcomeTo Admin Dashboard</h2>
		</div>
	</div>
		<div class="card" style="padding:2rem;">
		<h3 id="heading">Update User Panel</h3>
			<div class="row">
  <div class="col-md-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Register New User</h5>
        <p class="card-text">You can add new user as admin or simple user type by providing some personal details like fullname,email etc..  </p>
        <a href="registeruseradmin.jsp" class="btn btn-primary">Register New User</a>
      </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Check All User</h5>
        <p class="card-text">You can easily check all existing user in database. You will see user's name ,email and mobile number. </p>
        <a href="UserDisplayAdminController" class="btn btn-primary">All User</a>
      </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Update Existing User</h5>
        <p class="card-text">You can update existing user by searching particular user by its  Email Id.</p>
        <a href="updateuseradmin.jsp" class="btn btn-warning">Update User</a>
      </div>
    </div>
  </div>
   <div class="col-md-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete Existing User or Admin</h5>
        <p class="card-text">You can delete any existing user or admin by providing its email address and some basic details. </p>
        <a href="deleteuseradmin.jsp" class="btn btn-danger">Delete User</a>
      </div>
    </div>
  </div>
</div>
</div>
<div class="card" style="padding:2rem;">
		<h3 id="heading">Group Discussion Pannel</h3>
			<div class="row">
	<div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Post Question For Group Discussion </h5>
        <p class="card-text">You can post question to all user for group discussion.  </p>
        <a href="postgroupdisbyadmin.jsp" class="btn btn-primary">Post Question</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Get Previous Question</h5>
        <p class="card-text">You can check all the previous group discussion questions.</p>
        <a href="GetAllQuesGDController" class="btn btn-info">Get Questions</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete Question </h5>
        <p class="card-text">You can delete question previously posted group discussion questions by ID. </p>
        <a href="deletequestiongdadmin.jsp" class="btn btn-danger">Delete Questions</a>
      </div>
    </div>
  </div>
  
			</div>
			</div>
	</div>
</body>
</html>