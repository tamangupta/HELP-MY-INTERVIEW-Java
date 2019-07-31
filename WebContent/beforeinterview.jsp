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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <title>Pre Interview Tips</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
				<li class="nav-item active bg-danger"><a class="nav-link" href="postinterview.jsp" style="color:white">PostInterview<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="QuestionDisplay" style="color:white">Group Dis<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="feedback.jsp" style="color:white">Share Your Exp<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav> 
        <div class="container" id="pre_interview_tips" style=" border: 1px solid red;padding: 25px;border-radius: 7px;">

            <h2>      POSSIBLE PRE-INTERVIEW QUESTION  </h2>

            <h3>Preparing For Interview:-</h3>
            <h4>1.Start by researching the company and your interviewers. </h4>
            Understanding key information about the company you?re interviewing with can help you go into your interview with confidence. 
            Using the company?s website, social media posts and recent press releases will provide a solid understanding of what the company?s goals and
            how your background makes you a great fit. Review our Complete Guide to Researching a Company.

            <h4>2.Practice your answers to common interview questions. </h4>
            Prepare your answer to the common question: ?Tell me about yourself, and why are you interested in this role with our company??.
            The idea is to quickly communicate who you are and what value you will bring to the company and the role?it?s your personal elevator pitch. 
            Review our guide to answering Top Interview Questions.
            <h4>3.Re-read the job description.</h4>
            You may want to print it out and begin underlining specific skills the employer is looking for.
            Think about examples from your past and current work that align with these requirements.	

            <h4>4.Use the STAR method in answering questions.</h4>
            Prepare to be asked about times in the past when you used a specific skill and use the STAR method to tell stories with a clear Situation, 
            Task, Action and Result.

            <h4>5.Recruit a friend to practice answering questions.</h4>
            Actually practicing your answers out loud is an incredibly effective way to prepare.
            Say them to yourself or ask a friend to help run through questions and answers. 
            You?ll find you gain confidence as you get used to saying the words.

            <h4>6.Prepare a list of references. </h4>
            Your interviewers might require you to submit a list of references before or after your interview.
            Having a reference list prepared ahead of time can help you quickly complete this step to move forward in the hiring process.

            <h4>7.Be prepared with examples of your work.</h4>
            During the interview, you will likely be asked about specific work you?ve completed in relation to the position.
            After reviewing the job description, think of work you?ve done in past jobs, clubs or volunteer positions that show you have experience and success doing the work they require.

            <h4>8.Prepare smart questions for your interviewers.</h4>
            Interviews are a two-way street. Employers expect you to ask questions: they want to know that you?re thinking seriously about what it would be like to work there. Here are some questions you may want to consider asking your interviewers:
            ?Can you explain some of the day-to-day responsibilities this job entails??

            ?How would you describe the characteristics of someone who would succeed in this role??

            ?If I were in this position, how would my performance be measured? How often??
            ?What departments does this team work with regularly? How do these departments typically collaborate? What does that process look like??

            ?What are the challenges you?re currently facing in your role??

            TIPS FOR DURING INTERVIEW:
            After you?ve spent time preparing, you can be successful on interview day by practicing these tips:

            <h4>9.Plan your interview attire the night before. </h4>
            If you?re speaking to a recruiter before the interview, you can ask them about the dress code in the workplace and choose your outfit accordingly. If you don?t have someone to ask, research the company to learn what?s appropriate.

            Related: How to Dress for a Job Interview

            <h4>10.Bring copies of your resume, a notebook and pen. </h4>
            Take at least five copies of your printed resume on clean paper in case of multiple interviewers. 
            Highlight specific accomplishments on your copy that you can easily refer to and discuss. Bring a pen and small notebook. Prepare to take notes, but not on your smartphone or other electronic device. Write information down so that you can refer to these details in your follow-up thank you notes. Maintain eye contact as much as possible.

            Related: What to Bring to the Interview
            <h4>11.Plan your schedule so that you can arrive 10?15 minutes early.</h4>
            Map out your route to the interview location so you can be sure to arrive on time. Consider doing a practice run. If you?re taking public transportation, identify a backup plan if there are delays or closures.

            Pro-tip: When you arrive early, use the extra minutes to observe the workplace dynamics.
            <h4>12.Make a great first impression. </h4>
            Don?t forget the little things?shine your shoes, make sure your nails are clean and tidy, and check your clothes for holes, stains, pet hair and loose threads. Display confident body language and a smile throughout.

            <h4>13.Treat everyone you encounter with respect.</h4>
            This includes people on the road and in the parking lot, security personnel and front desk staff. Treat everyone you don?t know as though they?re the hiring manager. 
            Even if they aren?t, your potential employer might ask for their feedback.

            <h4> 14.Practice good manners and body language.</h4>
            Practice confident, accessible body language from the moment you enter the building. Sit or stand tall with your shoulders back. Before the interview, take a deep breath and exhale slowly to manage feelings of anxiety and encourage self-confidence. The interviewer should extend their hand first to initiate a handshake. Stand, look the person in the eye and smile. A good handshake should be firm but not crush the other person?s fingers.

            <h4>15.Win them over with your authenticity and positivity.</h4>
            Being genuine during interview conversations can help employers easily relate to you. Showing positivity with a smile and upbeat body language can help keep the interview light and constructive.

            <h4>16.Respond truthfully to the questions asked.</h4>
            While it can seem tempting to embellish on your skills and accomplishments, interviewers find honesty refreshing and respectable. 
            Focus on your key strengths and why your background makes you uniquely qualified for the position.

            <h4>17.Tie your answers back to your skills and accomplishments.</h4> 
            With any question you answer, it is important that you tie your background to the job by providing examples of solutions and results you?ve achieved. 
            Use every opportunity to address requirements listed in the job description.

            <h4>18.Keep your answers concise and focused. </h4>
            Your time with each interviewer is limited so be mindful of rambling. Practicing your answers beforehand can help keep you focused.

            <h4>19.Do not speak negatively about your previous employers.</h4>
            Companies want to hire problem solvers who overcome tough situations. If you?re feeling discouraged about your current job, focus on talking about what you?ve gained from that experience and what you want to do next.


        </div>

    </body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>