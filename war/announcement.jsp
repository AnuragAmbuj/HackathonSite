<%@page import="club.decoders.models.AnnouncementModel"%>
<%@page import="club.decoders.hackathon.DatastoreMaster"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="css/materialize.css" />
<link rel="stylesheet" href="css/materialize.min.css" />
<title>Announcements</title>
</head>
<body>
	<!-- Header Section -->
	<nav class="light-blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="index.html" class="brand-logo">Announcements | Home</a>
		</div>
		
	</nav>
	<!-- Document body begins -->

		<div align="center">
		
		<%
		
			for(AnnouncementModel anmodel:DatastoreMaster.getAllAnnouncements())
			{
				
				out.println("<div class='card blue-grey darken-1' align='center'>");
				out.println("<div class='card-content white-text'>");
				out.println("<span class='card-title'>"+anmodel.getAndate()+": "+anmodel.getAntitle()+"</span>");
				out.println("<p>"+anmodel.getAntext()+"</p>");
				out.println("</div>");
				out.println("<div class='card-action'>");
				if(!anmodel.getAnurl().equals(" "))
				out.println("<a href='"+anmodel.getAnurl()+"'>"+anmodel.getAnurl()+"</a>");
				else
				out.println("<a href='#'"+"No Specified Links"+"</a>");
				out.println("</div>");
				out.println("</div>");
			}	
		%>
		
		<!-- 

			<div class='card blue-grey darken-1' align='center'>
				<div class='card-content white-text'>
					<span class='card-title'>Card Title</span>
					<p>I am a very simple card. I am good at containing small bits
						of information. I am convenient because I require little markup to
						use effectively.</p>
				</div>
				<div class='card-action'>
					<a href='#'>This is a link</a>
				</div>
			</div>
			-->
		</div>
		


	<!-- Footer Section 
	<footer class="page-footer teal"
		style="bottom: 0px; position: absolute; height: 50px; width: 100%;">
		<div class="footer-copyright" align="center">
			Register if you haven't!<a href="register.jsp">here</a>.
		</div>
	</footer>
	-->
</body>
</html>