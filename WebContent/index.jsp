<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>HelpMyInterview.Com</title>
<meta charset="UTF-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  background-color: rgb(201, 76, 76);
  height: 100%;
  line-height: 1.8;
}


/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("http://localhost:9005/HelpMyInterview/img/bear-connection-dark-461497.jpg");
  min-height: 100%;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card" id="myNavbar">
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>
      <a href="login.jsp" class="w3-bar-item w3-button"><i class="fa fa-th"></i> LOGIN</a>
      <a href="signup.jjsp" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> SIGNUP</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> CONTACT US</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TEAM</a>
  <a href="login.jsp" onclick="w3_close()" class="w3-bar-item w3-button">LOGIN</a>
  <a href="signup.jsp" onclick="w3_close()" class="w3-bar-item w3-button">SIGNUP</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
</nav>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-jumbo w3-hide-small"></span><br>
    <span class="w3-xlarge">AMBITION IS THE FIRST STEP TOWARDS</span>
    <span class="w3-xxlarge w3-large w3-medium">SUCCESS</span><br>
    <p><a href="#about" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Learn more and start today</a></p>
  </div> 
  <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</header>

<!-- About Section -->
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="about">
  <h2 style="font-size:5vw" class="w3-center">ABOUT THE WEBSITE</h2>
  <p class="w3-center">Interview are crucial moments in one's caareer.Too often fears take over our performance in job. HelpMyInterview is a new user friendly web portal, with the idea of helping you prepare for the next big interview,by getting you ready by reading possible question your interviewer will have for you.Now this website would be little different because it's not just about question and answers we are going talk, But we'll also tell you that,what exactly the interviewer look's for when he is asking you certain quetions,what exact answers he's looking for at, what are the common mistakes that one usually does.The website provides you with the contend related to skills that could enhance your personality and confidence.</p>
  
 <br>
 
  <p class="w3-center w3-large">Key features of Web Site</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-xlarge">Customized Plan</p>
      <p>We offer tailored action plan based on your current preparation and goal.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-xlarge">Interview Coverage</p>
      <p>Solve almost all Technical and Non-Technical interview problems</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-xlarge">Get Reference</p>
      <p>Get reference of all experience holder interview section, read the there story about how was there experience. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-xlarge">Support</p>
      <p>HelpMyInterview supports various different features to make your interview successfull.</p>
    </div>
  </div>
</div>
<!-- Team Section -->

<!-- Team Section -->
<div class="w3-container" style="padding:128px 16px" id="team">
  <h3 class="w3-center">THE TEAM</h3>
  <p class="w3-center w3-large">The ones who runs this website</p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://localhost:9005/HelpMyInterview/img/taman.png" alt="Taman" height="350" style="width:100%;border-radius: 2%;" >
        <div class="w3-container">
          <h3>Taman Gupta</h3>
          <p class="w3-opacity">Mean Stack & Java Developer</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://localhost:9005/HelpMyInterview/img/sourabh.jpg" alt="Sourabh" height="350" style="width:100%;border-radius: 2%">
        <div class="w3-container">
          <h3>Sourabh Upadhyay</h3>
          <p class="w3-opacity">Java Developer</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://localhost:9005/HelpMyInterview/img/aditi.jpg" alt="Aditi" height="350" style="width:100%;border-radius: 2%">
        <div class="w3-container">
          <h3>Aditi Raj</h3>
          <p class="w3-opacity">Web Designer & Content-Manager</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://localhost:9005/HelpMyInterview/img/ashi.png" alt="Ashi" height="350" style="width:100%;border-radius: 2%">
        <div class="w3-container">
          <h3>Ashi Gupta</h3>
          <p class="w3-opacity">Web Designer & Content-Manager</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
      <img src="http://localhost:9005/HelpMyInterview/img/shailendra.png" alt="shailendra"  height="350" style="width:100%;border-radius: 2%">
        <div class="w3-container">
          <h3>Shailendra Sahani</h3>
          <p class="w3-opacity">Java Developer</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://localhost:9005/HelpMyInterview/img/none.png" alt="Gaurav"  height="350" style="width:100%;border-radius: 2%">
        <div class="w3-container">
          <h3>Gaurav Jha</h3>
          <p class="w3-opacity">Content-Manager</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Skills Section -->
<div class="w3-container w3-light-grey w3-padding-64">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h1 style="font-size:5vw">Our Skills.</h1>
      <p>HelpMyInterview is the online web portal which helps you to scale up preparation for interviews.</p>
      <p>We make sure that you get aware of the rules and content,which is important for your job interview. <br>
         Here you can improve all your skill.</p>
    </div>
    <div class="w3-col m6">
      <p class="w3-wide"><i class="fa fa-camera w3-margin-right"></i>Content writing</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:90%">90%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-desktop w3-margin-right"></i>Web Design</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:85%">85%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-photo w3-margin-right"></i>Accessibility</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:75%">75%</div>
      </div>
    </div>
  </div>
</div>

<!-- Contact Section -->
<div class="w3-container w3-light blue" style="padding:128px 16px" id="contact">
  <h1 style="font-size:5vw" class="w3-center">CONTACT</h1>
  <p class="w3-center w3-large">Lets get in touch. Send us your response:</p>
  <div style="margin-top:48px">
    <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i>GreaterNoida(U.P)</p>
    <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone:7062778217</p>
    <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email:taman.gupta@.com</p>
    <br>
    <form action="QueryFormController" method="post">
      <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button value="showAlert" onclick="showAlert(${msg});">Send Message</button>
      </p>
    </form>
    
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.HelpMyInterview" title="HelpMyInterview" target="_blank" class="w3-hover-text-green">HelpMyInterview</a></p>
</footer>
 
<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
  } else {
    mySidebar.style.display = 'block';
  }
}
function showAlert(message){
	  alert("Query Post Success");
	}
// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>

</body>
</html>
