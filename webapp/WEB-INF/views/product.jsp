<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT PAGE</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br>
<br>
<form:form action="productlist" method="post"  modelAttribute="product" enctype="multipart/form-data">
    <label><b>ProductId</b></label>
    <form:input type="text" path="productid"/><br>
    <br><label><b>ProductName</b></label>
    <form:input type="text" path="productname"/> <br>
    <br><label><b>Image</b></label>
    <form:input type="file" path="pimage"/></br>
	<br><label><b>ProductPrice</b></label>
    <form:input type="text" path="productprice"/><br>
    <br><label><b>ProductQuantity</b></label>
    <form:input type="text" path="productquantity"/><br>
    <br><label><b>ProductDescription</b></label>
    <form:input type="text" path="productdescription"/><br>
    <br><label><b>CategoryId</b></label>
    <form:input type="text" path="categoryid"/><br>
    <br><label><b>SupplierId</b></label>
    <form:input type="text" path="supplierid"/><br>
     <input type="submit" value="Submit"/>
     </form:form>
  
  <br>
<%@ include file="footer.jsp" %> 
</body>
</html>
