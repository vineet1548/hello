<%@ page import="category.CategoryHandler" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<c:import url="shared.jsp"></c:import>


<%

		CategoryHandler ch = new CategoryHandler();
		request.setAttribute("catList", ch.fetchAllCategories());

%>

</head>
<body>

<f:view>

<c:import url="header.jsp"></c:import>

<form method="POST" action="EditProductToDB">

<div class="container">
<div class="row">
	<h1>Product</h1>
	</div>
</div>

<div class="container">
<div class="row">
<div class="col-sm-4">
<h4>Product Name:</h4>
</div>

<div class="col-sm-8">
<input class="form-control" type="text" name="ProductName" placeholder="Enter Product Name">
</div>
</div>

<br>
<br>

<div class="row">
<div class="col-sm-4">
<h4>Product Description:</h4>
</div>
<div class="col-sm-8">
<textarea class="form-control" name="ProductDescription" placeholder="Enter Product Description"></textarea>
</div>
</div>
<br>
<br>


<div class="row">
<div class="col-sm-4">
<h4>Product Price:</h4>
</div>
<div class="col-sm-8">
<input class="form-control" type="text" name="ProductPrice" placeholder="Enter Product Price">
</div>
</div>
<br>
<br>

<div class="row">
<div class="col-sm-4">
<h4>Product StockQty:</h4>
</div>
<div class="col-sm-8">
<input class="form-control" type="text" name="ProductStockQty" placeholder="Enter Product StockQty">
</div>
</div>
<br>
<br>


<c:if test="${not empty catList}">

<div class="row">
<div class="col-sm-4">
<h4>Enter Category Product:</h4>
</div>

<div class="col-sm-8">
<select class="form-control" type="text" name="productCategoryId">
<c:forEach items="${catList }" var="c">
<option value="${c.getId()}" title="${c.getDescription()}">${c.getName()}</option>

</c:forEach>
</select>
</div>
</div>
</c:if>

<br>
<br>

<c:choose>
<c:when test="${not empty catList }">

<div class="row">
<div class="col-sm-12">
<center>
<button class="btn btn-danger" name="submit" type="submit">
<i class="fa fa-plus">Add</i>
</button>
</center>
</div>
</div>
</c:when>

<c:otherwise>

<div class="row">

<h1 class="alert alert-danger">Please Add Categories into System To Add Product</h1>

</div>
</c:otherwise>


</c:choose>
</div>
</div>
</form>
</f:view>
</body>
</html>