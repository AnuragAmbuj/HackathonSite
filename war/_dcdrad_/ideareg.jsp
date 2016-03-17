<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Idea Registration</title>
</head>
<body>
<h1 align="center">Registering the Ideas</h1>

<div align="center">
<form action="/masthandler" method ="post">
	<table>
		<tr>
			<td>
				<input type="text" name="teamname" required="required" placeholder="Team Name"> 
			</td>
		</tr>
		<tr>
			<td>
				<textarea rows="10" cols="60" name="idea" required="required" placeholder="Your idea!"></textarea>
			</td>
		</tr>
		
	</table>
	<button type="submit">Register Idea</button>
	<button type="reset">Reset</button>
</form>


</div>

</body>
</html>