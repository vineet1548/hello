<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>

<c:import url="shared.jsp"></c:import>
<c:import url="header.jsp"></c:import>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Montserrat|Poppins|Roboto&display=swap" rel="stylesheet">

<link href="https://kit-pro.fontawesome.com/releases/v5.9.0/css/pro.min.css" rel="stylesheet">
<style>
{
font-family: 'Literata', serif;
font-family: 'Merriweather', serif;
font-family: 'Francois One', sans-serif;
font-family: 'Crimson', serif;

}

.container{
	margin-top: 20px;
}

textarea{
resize: none;
}
 </style>

</head>
<body>
	<f:view>
<form action="AddCategoryToDB" method="POST">
<div class="container">
	<div class="">
	<br>
			<center>	<a class="btn btn-danger btn-sm" Style="font-size:30px;"><b><u>**Add Category**</u></b></a></center>
	
	
	</div>
</div>
<br>

<div class="container">
<div class="row">
<div class="col-lg-4">

<h4>Enter Category Name</h4>
</div>

<div class="col-lg-8">
<input class="form-control" type="text" name="categoryName"  placeholder="Name" required="true">

</div>
</div>
<br>
<br>

<div class="row">
<div class="col-lg-4">

<h4>Enter Category description</h4>
</div>

<div class="col-lg-8">
<textarea class="form-control" name="CategoryDescription" placeholder="Category Discription" required="true"></textarea>
</div>
</div>

<br>
<br>
<center>
<div class="row">
<div class="col-lg-12" style="text-align: center;">
<button class="btn btn-danger"><i class="fa fa-plus">Add</i></button>
</div>
</center>
</div>
</form>
</f:view>
</body>
</html>