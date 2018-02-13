<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUPPLIER PAGE</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br>
<br>
<form:form action="supplierlist" method="post" commandName="supplier">
    <label><b>SupplierId</b></label>
    <form:input type="text" path="supid"/><br>
    <br><label><b>SupplierName</b></label>
    <form:input type="text" path="supname"/> <br>
    <br><label><b>SupplierAddress</b></label>
    <form:input type="text" path="supadd"/><br>
       <input type="submit" value="Submit"/>
     </form:form>
   
    <br>
 <%@ include file="footer.jsp" %>    
   
</body>
</html>
