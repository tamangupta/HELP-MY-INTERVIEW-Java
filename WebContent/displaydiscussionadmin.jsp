<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="com.iimt.model.GroupAns"%>
<%@ page import ="java.util.*"%>
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
<link href="css/common.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
		<a class="navbar-brand "  href="index.jsp" style="color:white">HelpMyInterView.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" id="navId">
			<li class="nav-item active bg-danger"><a class="nav-link" href="admindashboard.jsp" style="color:white">Home<span class="sr-only">(current)</span></a></li>
			<li class="nav-item active bg-danger"><a class="nav-link" href="GetAllQuesGDController" style="color:white">GetAllQues<span class="sr-only">(current)</span></a></li>
			<li class="nav-item active bg-danger"><a class="nav-link" href="deletediscussionbyadmin.jsp" style="color:white">DeleteQues<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="admindashboard.jsp" style="color:white">Dashboard<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
	<div class="row" >
	<div class="card-body">
	<h1 style="text-align:center">Group Discussion Views</h1>
	</div>
	</div>
	<div class="row">
<div class="col-md-12" style="padding : 0.5rem">
	 <%
/*Java Code*/
List<GroupAns> list1 = (List<GroupAns>)request.getAttribute("list1");
%>
 <div class="card">
<table class="table">
 <thead>
      <tr>
        <th>UserName</th>
        <th>Views</th>
      </tr>
    </thead>
    <tbody>
 <%
for(GroupAns ans : list1){
%>
      <tr>
        <td ><%= ans.getFullName() %></td>
        <td ><%= ans.getAnswer() %></td>
      </tr>
<%} %>
 
    </tbody>
  </table>
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