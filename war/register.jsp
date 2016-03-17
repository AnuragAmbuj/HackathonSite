<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<script type="text/javascript">
	window.history.forward();
</script>
</head>
<body>
	<%
		RequestDispatcher disp = getServletConfig().getServletContext().getRequestDispatcher("/status.jsp");
		request.setAttribute("status", "Registrations now over!");
		disp.forward(request, response);
	%>
	<div id="page-wrapper">
		<div id="header-wrapper">
			<div class="container">
				<div class="row">
					<div class="12u">

						<header id="header">
							<h1>
								<a href="#" id="logo">Decoders Ultimate</a>
							</h1>
							<nav id="nav">
								<a href="#" class="current-page-item">Registration</a>
							</nav>
						</header>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div align="center" style="width: 100%;">
		<br> <br>
		<div align="center">
			<ul
				style="font-weight: bolder; color: brown; font-family: sans-serif;">
				<li>Enter every information correctly in a single attempt. You
					may not get the second chance on same USN!<br> <br>
				</li>
				<li>If anything goes wrong unintentionally mail us:
					decodersprogrammingclub@gmail.com <br> <br>
				</li>
				<li>Unwanted USNs will be cleared off by the admin. Admin may
					ask you to register again if some discrepancy is found!<br> <br>
				</li>
				<li>Maximum of 4 partipants and minimum of 2 participants per team. If any team found with
					more than 4 participants will be rejected! <br>
				</li>
				<li>Your Team Name will be in following format: Team followed by your team leader's Leader's USN<br>
					Eg: Your Team Leader's USN is 1SI15CS012, the Team Name will be Team1SI15IS012.
					Follow this pattern strictly. <br>
				</li>
			</ul>
		</div>
		<br> <br>
		<form action="/registrationservlet" method="post">
			<table>
				<tr>
					<td><input type="text" name="teamname" class="input"
						placeholder="Name of the team" required="required"><br>
						<br> <br></td>
				</tr>
				<tr>
					<td><input type="text" name="firstname" class="input"
						placeholder="First Name" required="required"><br> <br>
						<br></td>
				</tr>

				<tr>
					<td><input type="text" name="lastname" class="input"
						placeholder="Last Name" required="required"><br> <br>
						<br></td>
				</tr>
				<tr>
					<td><input type="text" name="email" class="input"
						placeholder="Enter Email" required="required"><br> <br>
						<br></td>
				</tr>
				<tr>
					<td><input type="text" name="usn" class="input"
						placeholder="Enter your USN Correctly" required="required"
						maxlength="10"><br> <br> <br></td>
				</tr>
				<tr>
					<td><input type="number" name="phone" class="input"
						min=1000000000 max=9999999999
						placeholder="Enter your Phone number?" required="required"
						maxlength="10"><br> <br> <br></td>
				</tr>
				<tr>
					<td><input type="number" name="cgpa" class="input" min="1"
						max="10" step="0.01" placeholder="Enter your current CGPA?"
						required="required" maxlength="4"><br> <br> <br></td>
				</tr>
			</table>
			<br> <br> <input type="submit" class="button"
				value="Complete Registration!"> &nbsp;&nbsp; <input
				type="reset" class="button" value="Reenter Details">
		</form>
	</div>
	<!-- Footer Section -->
	<div id="footer-wrapper">
		<div class="container">

			<div class="row">
				<div class="12u">

					<div id="copyright">
						<p>
							This event is <strong>organized only by some members of Decoders Final
								years, other members are not at all involved</strong>. Therefore they are
							free to participate in the event.
						</p>
						<p>
							Organized by: Final Year Decoders members | Developed/Powered by:
							Anurag Ambuj| UX inspiration: <a href="http://html5up.net">Minimaxing
								by HTML5 UP</a>
						</p>


					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Scripts Section -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/skel-viewport.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>