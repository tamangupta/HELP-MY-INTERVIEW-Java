<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String ses = (String)session.getAttribute("username");
if(ses!=null){
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Help My Interview</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="css/inteview.css" rel="stylesheet">
<style >
</style>
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
		<h2>SOFT SKILLS REQUIRED FOR JOB INTERVIEW:</h2>
		<p>Soft skills are sometimes referred to as transferable skills or
			professional skills. As this term implies, these are skills that are
			less specialised, less rooted in specific vocations, and more aligned
			with the general disposition and personality of a candidate. A poll
			of more than 2,100 hiring managers revealed that a whopping 77%
			believe soft skills are just as important as hard skills when
			evaluating potential job candidates. Also 16% said they were even
			more important. Freshers face multiple challenges in the corporate
			world.</p>

		<h4>13 ESSENTIAL SOFT SKILLS:</h4>
		<p>In addition to the technical and subject matter skills, soft
			skills are essential part of professional life. Sometimes, soft
			skills make the life of job seekers easy for cracking interviews.
			Today we would be discussing about the ten soft skills that a fresher
			must possess before joining corporate world:</p>

		<h4>(1) Email Writing:</h4>
		<p>Email is an integral part of communication; hence one has to be
			careful on writing it. Email should follow 5 C’s of communication
			that are clear, concise, correct, complete, and courteous. It should
			have clear subject lines, and should have no grammatical mistakes.
		<p>
		<h4>(2) Professionalism in relationships:</h4>
		<p>Professionalism in relationship reflects one’s ability to deal
			with difficult colleagues at work place. Freshers will come across
			the blamer, gossip monger, fault finders, back stabbers and not
			required delegator. One has to have skills to deal with these people,
			else it will hamper productivity, and ability to perform.</p>

		<h4>(3) Managing emotions at workplace:</h4>
		<p>It is easy to display emotions, it is easy to show you are sad
			when you are. Managing emotions at workplace help you enjoy your work
			and produce positive environment.</p>

		<h4>(4) Strong communication skills:</h4>
		<p>Communication skills do not mean speaking English. It is way
			beyond that. It includes conveying your message in a clear way using
			proper words, tone and body language. Ability to listen and not just
			hear, it is ability to present in front of others.</p>

		<h4>(5) Take responsibility:</h4>
		<p>Self-awareness is a seldom talked about but highly valued soft
			skill; knowing when to accept responsibility for any mistakes you
			have made demonstrates a healthy level of humility, and a willingness
			to learn and progress.</p>

		<h4>(6) Positive attitude:</h4>
		<p>Complaining, cribbing, speaking against your colleagues are
			negative attitudes. We ourselves avoid people who speak negative
			about others, about their lives or who always see half glass empty. A
			positive person is welcomed everywhere by open arms.</p>

		<h4>(7) Creating first impression:</h4>
		<p>As said, “It takes 3 seconds, to form an impression”, hence one
			must possess a skill of creating first impression. One has to know
			how to greet and meet, art of introduction, art of proper handshake
			and display positive body language.</p>

		<h4>(8) Dress for success:</h4>
		<p>People treat you differently as per your attire. Sometimes
			dress reflects your personality and confidence levels.</p>

		<h4>(9) Managing Boss:</h4>
		<p>Accept the fact corporate life is not bed of roses, you have to
			perform and be at your toes, and if you fail to manage expectation of
			your boss, you will have face tough situations. One cannot run away
			each time, one must have skill to build relationship, have assertive
			communication and manage expectation of boss.</p>

		<h4>(10) Managing time effectively:</h4>
		<p>“The fact is you will never get enough time to do everything,
			but you will have enough time to do most important things.” One has
			to learn to plan things, apply 80:20 principle. Managing distraction
			and work with focus.</p>

		<h4>(11)Teamwork:</h4>
		<p>Like leadership, good teamwork involves a combination of other
			soft skills. Working in a team towards a common goal requires the
			intuition and interpersonal acumen to know when to be a leader, and
			when to be a listener. Good team players are perceptive, as well as
			receptive to the needs and responsibilities of others.</p>

		<h4>(12)Decisiveness:</h4>
		<p>Knowing the distinction between decisiveness and recklessness
			implies a soft skill in itself. Decisiveness combines a number of
			different abilities: the ability to put things into perspective,to
			weigh up the options, to assess all relevant information and,
			crucially, to anticipate the consequences, good and bad.</p>

		<h4>(13)Flexibility:</h4>
		<p>Naturally, people can be wary of leaving the comfort zone
			formed by their repertoire of hard skills. Flexibility is an
			important soft skill, inasmuch as it demonstrates an ability and
			willingness to acquire new hard skills, and an open-mindedness to new
			tasks and new challenges. Employers often seek candidates who can
			show a willing and upbeat attitude, since many jobs come with the
			possibility of secondments.</p>


		<h2>How to Push Your Soft Skills in Your CV and at Interview?</h2>

		As with hard skills, you should spend some time considering what your
		soft skills are (it may help to ask people who know you well) and
		highlight them wherever possible in both your CV and in job
		interviews. Hard skills can be shown via qualifications, but soft
		skills are slightly more slippery. Since soft skills are necessarily
		abstract, you should reinforce any claims with examples of when you
		were able to use them to achieve positive outcomes. These examples can
		be drawn from professional, personal or academic experiences. Remember
		to show, don’t tell: simply stating that you are a great communicator,
		for example, can have the ironic effect of undermining the very soft
		skill you are claiming to have.
	</div>

</body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>