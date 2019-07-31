<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String ses = (String)session.getAttribute("username");
if(ses!=null){
%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/inteview.css" rel="stylesheet">
<title>Help My Interview</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
		<a class="navbar-brand "  href="index.jsp" style="color:white">HelpMyInterView.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" id="navId">
				<li class="nav-item active bg-danger"><a class="nav-link" href="userdashboard.jsp" style="color:white">Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="beforeinterview.jsp" style="color:white">PreInterview<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="QuestionDisplay" style="color:white">Group Dis<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="feedback.jsp" style="color:white">Share Your Exp<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>
	<div id="post_interview_tips" class="container"
		style="border: 1px solid red; padding: 25px; border-radius: 7px;">
		
		<h2>TIPS FOR AFTER INTERVIEW:</h2>
		When the interview is over, give yourself the best chances of moving
		forward by doing the following:

		<h4>1.Ask about next steps.</h4>
		After your interview, it is appropriate to ask either your
		interviewer, hiring manager or recruiter about what you should expect
		next. This will likely be a follow-up email with results from your
		interview, additional requirements like an assignment or reference
		list or another interview.

		<h4>2.Send a personalized thank you letter after the interview.</h4>
		Send personalized thank you notes to each interviewer. Ask for the
		business card of each person you speak with during the interview
		process so that you can follow up individually with a separate thank
		you email. If you interviewed in the morning, send your follow-up
		emails the same day. If you interviewed in the afternoon, the next
		morning is fine. Make certain that each each email is distinct from
		the others, using the notes you took during the conversations.

		<h4>3.Follow Up With the Hiring Manager.</h4>
		Decisions about candidates are often made quickly, so it's important
		to send your follow-up email immediately, the same day if possible.
		You want your interviewers to remember you and these follow-ups can
		make a good impression. The follow-up email doesn’t have to be long.
		Keep it succinct, thank the interviewer for the taking the time to
		speak with you, and mention these elements in your communication: An
		assertion that you believe the position is an excellent fit and that
		you would welcome the opportunity to join their organization. Include
		a brief summary of one or two sentences indicating why the position is
		an excellent match given your assets and interests. Supply any
		additional information that will address areas of concern that you
		were unable to fully address during the interview. For example, you
		might want to include a work sample demonstrating your competence in a
		key area of employer concern. Express your appreciation for the
		opportunity to meet, and if possible, compose slightly different
		personalized emails for each person rather than just copy/pasting the
		whole letter. Note something helpful that was shared with you by each
		individual. This is a nice touch – you definitely want to leave a good
		impression on all parties involved and be memorable. In addition,
		consider forwarding a separate communication expressing your gratitude
		to any helpful support staff people you met. Those staffers have more
		influence than you might think when it comes to hiring decisions. You
		want as many people on your side as possible. Connect With Your
		Interviewer Online It’s a good idea to think beyond the current
		position for which you’ve just interview because you're potentially
		creating a long-term relationship with this interviewer, even if you
		don't secure the immediate job opening. Review your post-interview
		notes and connect with your interviewer through LinkedIn by finding an
		opening for a connection based on a discussion that arose during your
		interview. Perhaps you mentioned a newspaper article relevant to their
		business that you'd like to forward, for instance. These connections
		are important because if you don’t get the current position, something
		might pop up later and the interviewer might make a connection with
		you.

		<h4>4.Notify Your References</h4>
		Having suitable references are going to be essential for your job
		search and you don’t want them to feel like they’re being cold-called
		by your potential employer. So, if you haven't already, alert your
		references that they might receive a call or email and summarize your
		case for the job and add in any points you want them to stress in
		their recommendation. In addition, If any of your strongest supporters
		have a contact within your prospective company, consider exploring
		their willingness to make an unsolicited endorsement on your behalf.
		People usually like to be helpful, but don’t forget to show
		appreciation for their endorsement with a follow-up thank you letter
		or email. In fact, sending a thank you note to all your references may
		be a good idea.

		<h4>5.Get your Iterview Connect Information.</h4>
		Befre you leaving the building,you should also make sure you've
		gathered your interview 'business card,augustin says.if not ask the
		receptionist or your contact for the names and email address everyone
		you meet with.

		<h4>6.Write down the key points from the interview.</h4>

		This must be done immediately after the interview while it’s still
		fresh in your mind. Write down any key points that were covered or big
		questions that were asked, as well as your answers. This is especially
		important in the first interview, as you may be asked similar
		questions again in subsequent interviews. Rather than giving the same
		answer again, you can add on to your previous answer and tell you
		interview that it’s something you’ve been thinking about since the
		first interview. Also make a note of anything you wanted to say in the
		interview but didn’t get a chance to mention. You can make sure to
		bring up these points in the next interview, or if it’s your final
		interview, you might be able to mention them in a thank you note. In
		addition to writing down the material that was covered, you should
		look at it with a critical eye to identify what went well and what
		didn’t. Take this information and use it to practice and improve for
		your next interview. Analyzing your interview will help you identify
		any areas that you need to improve on, and will make sure you don't
		forget any important details from the interview.

		<h4>7.Create a list of items that you did well and that you would
			like to improve on.</h4>
		This can be one of the most effective things to do after an interview
		because it will allow you to improve for future job interviews, or
		assess general weaknesses that will be helpful in your career. Doing
		this right after an interview is ideal as well because everything will
		be fresh. It doesn’t have to be a big fancy list, bullet points will
		do. The most important thing to remember is to be brutally honest with
		yourself. Even if you didn’t like the way the interview was conducted,
		there’s always something you can do to improve. Find it!
	</div>

</body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>