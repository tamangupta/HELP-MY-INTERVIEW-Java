<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String ses = (String)session.getAttribute("username");
if(ses!=null){
%>
<html lang="en">
<head>
<title>HelpMyInterview</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-danger " style="background-color:#c91d12">
		<a class="navbar-brand "  href="userdashboard.jsp" style="color:white;">HelpMyInterView.Com</a>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="col-lg-20 col-md-20 mb-15">
			<div class="card h-100">
				<style>
body {
	background-color: black;
}
</style>
			</div>
		</div>
	</div>
	<!-- Jumbotron Header -->
	<header class="jumbotron my-4">
		<h2 class="display-3">
			<center>
				Resume Templates:<br> Get a Professional Resume in Minutes
		</h2>
		</center>
		<p class="lead">
		<center>
			<h4 class="display-3">
				<b> Select one of our best resume templates below to craft the
					perfect resume in minutes </b>
			</h4>
			</p>
		</center>
	</header>
	<!-- Page Features -->
	<div class="row text-center">
		<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="card h-100">
					<img src=" http://localhost:9005/HelpMyInterview/img/resume.jpg"
						src="http://placehold.it/300x150" alt="">
					<div class="card-body">
					<br> <br>
						<a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%20%202.pdf"
							class="btn btn-primary"> View Template</a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card h-100">
					<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg"
						src="http://placehold.it/300x150" alt="">
					<div class="card-body">
						<br> <br> <a
							href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%20%203.pdf"
							class="btn btn-primary">View Template</a>
					</div>
				</div>
			</div>
		<div class="col-md-3">
			<div class="card h-100">
				<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg" src="http://placehold.it/300x150"
					alt="">
				<div class="card-body">
					<br> <br> <a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%20%204.pdf"
						class="btn btn-primary">View Template</a>
				</div>
			</div>
		</div>
	<div class="col-md-3">
			<div class="card h-100">
				<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg" src="http://placehold.it/300x150"
					alt="">
				<div class="card-body">
					<br> <br> <a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%20%207.pdf"
						class="btn btn-primary">View Template</a>
				</div>
			</div>
		</div>
		</div>
		<div class="row" style="padding-top:2rem;padding-bottom:2rem">
		<div class="col-md-3">
			<div class="card h-100">
				<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg" src="http://placehold.it/300x150"
					alt="">
				<div class="card-body">
					<br> <br> <a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%20%208.pdf"
						class="btn btn-primary">View Template</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="card h-100">
				<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg" src="http://placehold.it/300x150"
					alt="">
				<div class="card-body">
					<br> <br> <a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%201.pdf"
						class="btn btn-primary">View Template</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="card h-100">
				<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg" src="http://placehold.it/300x150"
					alt="">
				<div class="card-body">
					<br> <br> <a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%205.pdf"
						class="btn btn-primary">View Template</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="card h-100">
				<img src="http://localhost:9005/HelpMyInterview/img/resume.jpg" src="http://placehold.it/300x150"
					alt="">
				<div class="card-body">
					<br> <br> <a href="http://localhost:9005/HelpMyInterview/pdf/resume%20template%206.pdf"
						class="btn btn-primary">View Template</a>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>