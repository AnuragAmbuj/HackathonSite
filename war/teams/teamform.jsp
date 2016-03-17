<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="css/materialize.css" />
<link rel="stylesheet" href="css/materialize.min.css" />
<title>Team Formation</title>
</head>
<body>
	<nav class="light-blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="#" class="brand-logo">Team Formation Page</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="../index.html">Home</a></li>
			</ul>
		</div> 
	</nav>
	<div align ="center">
	<ul style="color: gray;">
		<li>Only registered USNs can form teams</li>
		<li>A USN can be a part of one team only.</li>
		<li>Maximum of 3 people in a team</li>
		<li>A team leader is necessary</li>
		<li>If you are participating as a single candidate, register as leader and leave other fields blank</li>
		<li>If you are participating as 2 candidates in a team, leave the last field blank</li>
	</ul>
	<form action="/teammaker" method = "post" id="TeamForm">
		<p>Team Leader : <input type="text" maxlength="10" name="teamleader" required="required" placeholder="Your USN?"></p>
		<p>First Team-mate: <input type="text" maxlength="10" name="teammate1" placeholder="USN?"></p>
		<p>Second Team-mate: <input type = "Text" maxlength="10" name="teammate2" placeholder="USN?"></p>
		<p align="center">
		<button type = "submit" class ="btn waves-effect waves-light">Register team <i class="material-icons right"></i></button>
		<button type="reset" value="Clear" class ="btn waves-effect waves-light">Clear Values</button></p>
	</form>
	</div>
	<!-- Footer section below -->
	<footer class="page-footer blue">
		<div class="footer-copyright">
			Organizers: Decoders Final Years |
				WebApp Dev & Admin: Anurag Ambuj | Powered by: Google App Engine
		</div>
	</footer>
	<!-- Linking Scripts -->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>