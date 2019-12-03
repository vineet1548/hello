<%@page import="category.CategoryHandler"%>
<%@page import="category.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="shared.jsp" />

<%
short id = Short.parseShort(request.getParameter("id"));
Category c = new CategoryHandler().fetchCategory(id);

request.setAttribute("currCat", c);
%>

</head>


	<c:import url="header.jsp" />

	<br>
	<br>

	<h1>Edit Category</h1>

	<hr>

	<form action="EditCategoryToDB" method="post">

		<input type="hidden" name="id" value="${currCat.getId()}">

		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Category Name:</h4>
				</div>
				<div class="col-lg-8">
					<input name="categoryName" value="${currCat.getName()}" class="form-control" placeholder="Enter Category Name">
				</div>
			</div>
			
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Category Description:</h4>
				</div>
				<div class="col-lg-8">
					<textarea name="categoryDescription" placeholder="Enter Category Description" rows="" cols="" class="form-control">${currCat.getDescription()}</textarea>
				</div>
			</div>
			
			<br>
			<br>
			
			<div class="row">
				<div class="col-lg-12" style="text-align: center;">
					<button class="btn btn-danger"><i class="fas fa-plus"></i> Edit</button>
				</div>
			</div>
		</div>

	</form>

</body>
</html>