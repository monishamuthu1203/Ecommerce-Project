<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<style>
body
{
background-image:url("https://wallpaperscraft.com/image/wrist_watch_dial_strap_114984_1920x1080.jpg");
}
</style>
<body>
<%@ include file="header.jsp"%>
<form action="perform_login" method="post">
							                    <center><h1>LOGIN!!!</h1></center>
												USERNAME:<input placeholder="Username" required id="username" name="username" type="text" pattern=".{5,10}" title="minimum length for username is 5"/><br>
												<br>
												PASSWORD:<input class="form-control" placeholder="Password" required name="password" type="password" title="Enter Valid credentials"/><br>
												<br>
											     <input style="background-color:" type="submit" value="Sign in">
											     <a href="register">Register</a>
											     
											     
						
<%@ include file="footer.jsp"%>
</body>
</html>				