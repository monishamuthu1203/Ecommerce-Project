<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{
background-image:url("https://previews.123rf.com/images/alexmillos/alexmillos1211/alexmillos121100596/16438005-watch-and-map-blue-illustration-background-design-Stock-Vector.jpg");
}
</style>
<body>
<%@ include file="header.jsp"%>
<br>
<br>
<br>
<br>
<div>
<center>
<h2 style="text-align:center"> ContactUs</h2>
<form>
NAME: <input type="text" name="name"><br><br>
ADDR:<input type="text" name="address"><br><br>
PH NO:<input type="text" name="number"><br><br>
MESSAGE:<textarea name="subject" style="height:200px"></textarea><br>
<br>
<input type="submit" value="submit" name="submit">
</form>
</center></div>
<br>
<br>
<br>
<br>
<%@ include file="footer.jsp"%>
</body>
</html>


