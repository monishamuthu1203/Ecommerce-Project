
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of categories</title>
</head>
<body>

<%@ include file="header.jsp" %>
<br>
<br>
<br>
<br>
<h1>List of categories</h1>
<p>Here you can see the list of the categories, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">categoryid</th><th width="15%">categoryname</th><th width="10%">categorydesc</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="category" items="${category}">
<tr>
	<td>${category.catid}</td>
	<td>${category.catname}</td>
	<td>${category.catdesc}</td>
	<td>
	<a href="deletecategory/${category.catid}">Delete</a>
	<a href="editcategory/${category.catid}">Edit</a>
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
