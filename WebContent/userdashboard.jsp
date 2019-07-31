<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%
String ses = (String)session.getAttribute("username");
if(ses!=null){
%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="css/user.css" rel="stylesheet">
<title>Help My Interview User Dashboard</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
		<a class="navbar-brand "  href="index.jsp" style="color:white;padding-right:4rem">HelpMyInterView.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav float-md-right" id="navId">
				<li class="nav-item active bg-danger"><a class="nav-link" href="userdashboard.jsp" style="color:white">Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="beforeinterview.jsp" style="color:white">PreInterview<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="QuestionDisplay" style="color:white">Group Dis<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="feedback.jsp" style="color:white">Share Your Exp<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active" style="float:left"><a class="nav-link"  style="color:white;float:right">Welcome, ${username}<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
</nav>
<div class="container-fluid" style="padding-top:1rem;">
<div class="jumbotron text-white" >
  <h1 class="display-4" >Aspiration Meets Hope</h1>
  <p class="lead">The better prepare you are,the most successful your interview would be.</p>
  <hr class="my-4">
  <p>Reach Your Destination With Organised Plan</p>
  <a class="btn btn-primary btn-lg" href="" role="button">Get Started</a>
</div>
<div class="card" style="background-color:lightgray">
<h1 id="feature">Prepare Your Self For Tomorrow</h1>
<div class="card-columns" id="card-c">
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="beforeinterview.jsp" class="text-white"><h3>Tips For Before Interview Preparation(Fresher&Exp)</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="postinterview.jsp" class="text-white"><h3>Tips For After Interview Preparation(Fresher&Exp)</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="QuestionDisplay" class="text-white"><h3>Click To Enter In Group Discussion</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="DisplayAllFeedback" class="text-white"><h3>Read Experience(Professionals)</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="resumetemplateuser.jsp" class="text-white"><h3>Resume Template (Fresher & Exp)</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="feedback.jsp" class="text-white"><h3>Share Your Interview Experience</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="softskills.jsp" class="text-white"><h3>Tips To Improve Communication Skills</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="" class="text-white"><h3>Some More Features Coming Soon...</h3></a></p>
    </div>
  </div>
  <div class="card" id="ca" >
    <div class="card-body text-center ">
      <p class="card-text text-white"><a href="" class="text-white"><h3>Some More Features Coming Soon...</h3></a></p>
    </div>
  </div>
  </div>
</div>
</div>
</body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>