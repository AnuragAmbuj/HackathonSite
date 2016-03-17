<!DOCTYPE html>
<%@page import="com.google.appengine.api.datastore.PreparedQuery"%>
<%@page import="club.decoders.hackathon.DatastoreMaster"%>
<%@page import="com.google.appengine.api.datastore.Query"%>
<%@page import="com.google.appengine.api.datastore.*"%>
<html>
<head>
<title>Information for Administrators</title>
</head>
<body>
	<h1 align="center">CANDIDATES REGISTRATION INFORMATION</h1>
	<br>
	<br>
	<div align=center>
		<%
			Query q = new Query("Candidate");
			PreparedQuery pq = DatastoreMaster.getDatastoreService().prepare(q);
			out.println("<table border='1' width = 100% >");
			out.println("<tr>");
				out.println("<th>Candidate Key</th>");
				out.println("<th>Team</th>");
				out.println("<th>User ID</th>");
				out.println("<th>Name</th>");
				out.println("<th>Email ID</th>");
				out.println("<th>USN</th>");
				out.println("<th>Mobile</th>");
				out.println("<th>Current CGPA</th>");
			out.println("</tr>");
			for (Entity all : pq.asIterable()) {
				out.println("<tr>");
				out.println("<td>"+all.getKey().toString()+"</td>");
				out.println("<td>"+all.getProperty("teamname")+"</td>");
				out.println("<td>"+all.getProperty("UserID")+"</td>");
				out.println("<td>"+all.getProperty("firstname")+" "+all.getProperty("lastname")+"</td>");
				out.println("<td>"+all.getProperty("email")+"</td>");
				out.println("<td>"+all.getProperty("usn")+"</td>");
				out.println("<td>"+all.getProperty("phone")+"</td>");
				out.println("<td>"+all.getProperty("cgpa")+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			
		%>
	</div>
</body>
</html>