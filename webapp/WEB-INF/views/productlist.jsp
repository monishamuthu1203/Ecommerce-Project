
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of Products</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br>
<br>
<br>
<br>

<h1>List of Products</h1>
<p>Here you can see the list of the products, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">productid</th><th width="15%">productdesc</th><th width="10%">productname</th><th width="10%">productprice</th><th width="10%">productquantity</th><th width="10%">categoryid</th><th width="10%">supplierid</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="product" items="${product}">
<tr>
	<td>${product.productid}</td>
	<td>${product.productname}</td>
	<td>${product.productprice}</td>
	<td>${product.productquantity}</td>
	<td>${product.productdescription}</td>
	<td>${product.categoryid}</td>
	<td>${product.supplierid}</td>
    <td>
			
			<a href="<c:url value="AddCart/${product.productid}"/>"><span class="glyphicon glyphicon-shopping-cart">Add to cart</a>
		</td>	
		
    <td>
	<a href="deleteproduct/${product.productid}">Delete</a>
	<a href="editproduct/${product.productid}">Edit</a>
	
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
