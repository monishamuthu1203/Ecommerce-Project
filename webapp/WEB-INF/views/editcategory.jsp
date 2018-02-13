<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="container" style="margin-bottom: 19px">
		<h1 class="well">Update category !</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
 			<!--   	<c:url value="/WEB-INF/views/editcategory" var="url"></c:url>  -->
				<form:form method="post" action="editcategory" commandName="editcategoryobj">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="catid">CategoryId</form:label>
								<form:input type="text" placeholder="Enter CategoryId.."
									class="form-control" path="catid" disabled="true"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="catname">CategoryName</form:label>
								<form:input type="text" placeholder="Enter Category Name.."
									class="form-control" path="catname"></form:input>
							</div>
						</div>
						<div class="form-group">
							<form:label path="catdesc">CategoryDescription</form:label>
							<form:textarea type="text" placeholder="Enter category decription.."
								class="form-control" path="catdesc"></form:textarea>
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

