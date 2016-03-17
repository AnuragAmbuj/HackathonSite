<!DOCTYPE html>
<html>
<head>
<title>Decoders Confirmation</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<script type="text/javascript">
	window.history.forward();
</script>
</head>
<body>
	<div id="page-wrapper">
		<div id="header-wrapper">
			<div class="container">
				<div class="row">
					<div class="12u">

						<header id="header">
							<h1>
								<a href="index.html" id="logo">DECODERS HACKATHON</a>
							</h1>
							<nav id="nav">
								<a href="#" class="current-page-item">Status/Confirmation
									message</a>
							</nav>
						</header>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="banner-wrapper">
		<div class="container">
			<div id="banner">
				<h2>
					<%
						Object obj = request.getAttribute("status");
						if (obj == null) {
							out.println(" Oh! You got astray, please move back home!");
						} else {
							out.println(obj.toString() + " ");
						}
					%>
				</h2>

			</div>
		</div>
	</div>

	<%
		response.setHeader("Cache-Control",
				"no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
	%>

	<!-- Footer Section -->
	<div id="footer-wrapper">
		<div class="container">

			<div class="row">
				<div class="12u">

					<div id="copyright">
						<p>
							This event is <strong>organized only by Decoders Final
								years, other members are not at all involved</strong>. Therefore they are
							free to participate in the event.
						</p>
						<p>
							Organized by: Final Year Decoders members | Developed/Powered by:
							Anurag Ambuj | UX inspiration: <a href="http://html5up.net">Minimaxing
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