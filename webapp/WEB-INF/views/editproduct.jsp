<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Edit Page</title>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="container" style="margin-bottom: 19px">
		<h1 class="well">Update product !</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
				<c:url value="/editproduct" var="url"></c:url>
				<form:form method="post" action="${url}"
					commandName="editproductobj">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="productid">ProductId</form:label>
								<form:input type="text" placeholder="Enter ProductId.."
									class="form-control" path="productid" disabled="true"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="productname">ProductName</form:label>
								<form:input type="text" placeholder="Enter Product Name.."
									class="form-control" path="productname"></form:input>
							</div>
						</div>
						<div class="form-group">
							<form:label path="productprice">ProductPrice</form:label>
							<form:textarea type="text" placeholder="Enter product price.."
								class="form-control" path="productprice"></form:textarea>
						</div>
						<div class="form-group">
							<form:label path="productquantity">ProductQuantity</form:label>
							<form:textarea type="text" placeholder="Enter product quantity.."
								class="form-control" path="productquantity"></form:textarea>
						</div>
						<div class="form-group">
							<form:label path="productdescription">ProductDescription</form:label>
							<form:textarea type="text" placeholder="Enter product description.."
								class="form-control" path="productdescription"></form:textarea>
						</div>
						
						
						
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info">Update</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
<%@ include file="footer.jsp"%>	
</body>
</html>

