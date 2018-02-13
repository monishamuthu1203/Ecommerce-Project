<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Edit Page</title>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="container" style="margin-bottom: 19px">
		<h1 class="well">Update Supplier !</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
				<c:url value="/editsupplier" var="url"></c:url>
				<form:form method="post" action="${url}"
					commandName="editsupplierobj">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">0
								<form:label path="supid">SupplierId</form:label>
								<form:input type="text" placeholder="Enter SupplierId.."
									class="form-control" path="supid" disabled="true"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="supname">SupplierName</form:label>
								<form:input type="text" placeholder="Enter Supplier Name.."
									class="form-control" path="supname"></form:input>
							</div>
						</div>
						<div class="form-group">
							<form:label path="supadd">SupplierAddress</form:label>
							<form:textarea type="text" placeholder="Enter Supplier Address.."
								class="form-control" path="supadd"></form:textarea>
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

