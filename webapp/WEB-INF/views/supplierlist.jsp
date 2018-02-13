
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of Suppliers</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br>
<br>
<br>
<br>
<h1>List of suppliers</h1>
<p>Here you can see the list of the suppliers, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">supplierid</th><th width="15%">suppliername</th><th width="10%">supplieradd</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>

<c:forEach var="supplier" items="${supplier}">
<tr>
	<td>${supplier.supid}</td>
	<td>${supplier.supname}</td>
	<td>${supplier.supadd}</td>
	<td>
	<a href="deletesupplier/${supplier.supid}">Delete</a>
	<a href="editsupplier/${supplier.supid}">Edit</a>
	</td>
</tr>
</c:forEach>
</tbody>
</table>
<br>
<br>
<br>
<br>
<%@ include file="footer.jsp" %>
</body>
</html>
