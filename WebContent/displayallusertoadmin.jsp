<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.iimt.model.User"%>
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
<title>HelpMyInterview</title>
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
			<li class="nav-item active bg-danger"><a class="nav-link" href="registeruseradmin.jsp" style="color:white">RegisterUser<span class="sr-only">(current)</span></a></li>
			<li class="nav-item active bg-danger"><a class="nav-link" href="updateuseradmin.jsp" style="color:white">UpdateUser<span class="sr-only">(current)</span></a></li>
			<li class="nav-item active bg-danger"><a class="nav-link" href="deleteuseradmin.jsp" style="color:white">DeleteUser<span class="sr-only">(current)</span></a></li>
			<li class="nav-item active bg-danger"><a class="nav-link" href="admindashboard.jsp" style="color:white">Dashboard<span class="sr-only">(current)</span></a></li>
			<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>

<div class="container">
	<div class="row">
		<div class="col-md-12"><h1 id="heading">All User </h1>  </div>
	</div>
</div>
	<div class="row">
		<div class="col-md-12"  style="padding : 4rem">
		    <%
/*Java Code*/
List<User> list = (List<User>)request.getAttribute("list");
%>
		<table class="table">
    <thead>
      <tr>
        <th>FullName</th>
        <th>Email</th>
        <th>MobileNumber</th>
         <th>UserType</th>
      </tr>
    </thead>
    <tbody>
 <%
for(User u : list){
%>
      <tr>
        <td><%=u.getFirstName()+" "+u.getLastName() %></td>
        <td><%=u.getEmailAddress() %></td>
         <td><%=u.getMobilenumber() %></td>
        <td><%=u.getUserType() %></td>
      </tr>
<%} %>
    </tbody>
  </table>
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