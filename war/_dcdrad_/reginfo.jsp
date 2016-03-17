<%@page import="club.decoders.hackathon.DatastoreMaster"%>
<%@page import="club.decoders.models.HackathonCandidate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Info</title>
</head>
<body>
	<h1>Registered Candidates with their team</h1>
	<div>
	<%
		out.println("<table border='1' width = 100% >");
		out.println("<tr>");
		out.println("<th>Team</th>");
		out.println("<th>Name</th>");
		out.println("<th>Email ID</th>");
		out.println("<th>USN</th>");
		out.println("<th>Mobile</th>");
		out.println("<th>Current CGPA</th>");
		out.println("</tr>");
		for (HackathonCandidate all : DatastoreMaster.getAllCandidates()) {
			out.println("<tr>");
			out.println("<td>" + all.getTeamName() + "</td>");
			out.println("<td>" + all.getFirstname() + " "
					+ all.getLastname() + "</td>");
			out.println("<td>" + all.getEmail() + "</td>");
			out.println("<td>" + all.getUsn() + "</td>");
			out.println("<td>" + all.getPhone() + "</td>");
			out.println("<td>" + all.getCgpa() + "</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	%>
	</div>

</body>
</html>