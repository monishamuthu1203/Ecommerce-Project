<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTER PAGE</title>
</head>
<style>
body {
    
 background-image: url("https://s-media-cache-ak0.pinimg.com/originals/82/be/3a/82be3a7cdc98d366e3eaf7fc57523173.jpg");
background-color: #eee;

}
</style>
<body>
<%@ include file="header.jsp"%>
<form:form action="register" method="post" commandName="user">
<center><h1>REGISTRATION FORM!!!</h1></center>
    <label><b>FirstName</b></label>
    <form:input type="text" path="firstname"/><br>
    <br><label><b>LastName</b></label>
    <form:input type="text" path="lastname"/> <br>
    <br><label><b>UserName</b></label>
    <form:input type="text" path="username"/><br>
     <br><label><b>Password</b></label>
    <form:input type="password" path="password"/> <br>
    <br><label><b>Address</b></label> 
    <form:input type="text" path="address"/><br>
     <br><label><b>Email-Id</b></label>
    <form:input type="email" path="email"/><br>
     <input type="submit" value="Submit"/>
    
  </form:form>
  <%@ include file="footer.jsp"%>
 </body>
</html>
