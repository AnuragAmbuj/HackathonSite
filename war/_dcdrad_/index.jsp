<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<title>Admin Board</title>
<link rel="stylesheet" href="css/materialize.css" />
<link rel="stylesheet" href="css/materialize.min.css" />
</head>
<body>
	<nav class="light-blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="#" class="brand-logo">Decoders
				Hackathon Organizers Console</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="reginfo.jsp">Show Registrations</a></li>
			</ul>
		</div>
	</nav>
	<%
		Object status = request.getAttribute("status");
		if(status == null)
		{
			
		}
		else
		{
			out.println("<p align='center' style='color:red'>"+status.toString()+"</p>");
		}
	
	%>
	<div class="container">
		<div class="section">

			<!--   Icon Section   -->
			<div class="row">
				<div class="col s12 m4">
					<div class="icon-block">
						<h2 class="center light-blue-text">
							<i class="material-icons">Announcer</i>
						</h2>
						<h5 class="center">Make an announcement</h5>

						<p class="light">Make the announcement to be visible in the
							announcement pages that candidates will regularly visit!</p>

						<p>
							<a href="/_dcdrad_/announcement_maker.jsp"
								id="download-button"
								class="btn-large waves-effect waves-light orange">Announce</a>
						</p>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="icon-block">
						<h2 class="center light-blue-text">
							<i class="material-icons">Registration Peaker</i>
						</h2>
						<h5 class="center">Peak into registrations!</h5>

						<p class="light">See who all have registered and also get a
							total count of the registration. Get total number of girls and
							boys registered separately. All in simple printable format!</p>
						<p>
							<a href="reginfo.jsp"
								id="download-button"
								class="btn-large waves-effect waves-light orange">See
								Registrations</a>
						</p>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="icon-block">
						<h2 class="center light-blue-text">
							<i class="material-icons">Hackathon Challenges</i>
						</h2>
						<h5 class="center">Topics on End to End Web Development</h5>

						<p class="light">Organizers are free to submit topics for
							Hackathon Challenge and make it easy to announce it to students
							later.</p>
						<p>
							<a href="#"
								id="download-button"
								class="btn-large waves-effect waves-light orange">Submit a
								Challenge!</a>
						</p>
					</div>
				</div>
			</div>

		</div>
		<br> <br>

		<div class="section"></div>
	</div>



	<!-- Footer section below -->
	<footer class="page-footer blue">
		<div class="footer-copyright">
			Organizers: Decoders Final Years |
				WebApp Dev & Admin: Anurag Ambuj | Powered by: Google App Engine
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>